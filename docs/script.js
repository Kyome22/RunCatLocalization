class RunnerNamesViewer {
  constructor() {
    this.runners = [];
    this.filteredRunners = [];
    this.currentPage = 1;
    this.itemsPerPage = 20;
    this.selectedLanguages = ["en"];

    this.init();
  }

  async init() {
    await this.loadData();
    this.setupEventListeners();
    this.render();
  }

  async loadData() {
    try {
      const response = await fetch("runner-names.json");
      this.runners = await response.json();
      this.filteredRunners = [...this.runners];
    } catch (error) {
      console.error("Failed to load runner data:", error);
      this.showError("Failed to load runner data. Please refresh the page.");
    }
  }

  setupEventListeners() {
    // Search functionality
    const searchInput = document.getElementById("searchInput");
    searchInput.addEventListener("input", (e) => {
      this.filterRunners(e.target.value);
    });

    // Language checkboxes
    const languageCheckboxes = document.querySelectorAll(".language-checkbox input");
    languageCheckboxes.forEach((checkbox) => {
      checkbox.addEventListener("change", () => {
        this.updateSelectedLanguages();
        this.updateLanguageCheckboxStyles();
      });
    });

    // Pagination
    document.getElementById("prevPage").addEventListener("click", () => {
      this.previousPage();
    });

    document.getElementById("nextPage").addEventListener("click", () => {
      this.nextPage();
    });

    // Initial style update
    this.updateLanguageCheckboxStyles();
  }

  filterRunners(searchTerm) {
    if (!searchTerm.trim()) {
      this.filteredRunners = [...this.runners];
    } else {
      const term = searchTerm.toLowerCase();
      this.filteredRunners = this.runners.filter((runner) => {
        return (
          runner.runner_id.toLowerCase().includes(term) ||
          Object.values(runner.translations).some((translation) =>
            translation.toLowerCase().includes(term)
          )
        );
      });
    }

    this.currentPage = 1;
    this.render();
  }

  updateSelectedLanguages() {
    const checkboxes = document.querySelectorAll(".language-checkbox input:checked");
    this.selectedLanguages = Array.from(checkboxes).map((cb) => cb.value);
    this.updateLanguageCheckboxStyles();
    this.render();
  }

  updateLanguageCheckboxStyles() {
    const languageLabels = document.querySelectorAll(".language-checkbox");
    languageLabels.forEach((label) => {
      const checkbox = label.querySelector("input");
      if (checkbox.checked) {
        label.classList.add("selected");
      } else {
        label.classList.remove("selected");
      }
    });
  }

  previousPage() {
    if (this.currentPage > 1) {
      this.currentPage--;
      this.render();
    }
  }

  nextPage() {
    const totalPages = Math.ceil(this.filteredRunners.length / this.itemsPerPage);
    if (this.currentPage < totalPages) {
      this.currentPage++;
      this.render();
    }
  }

  render() {
    this.renderTable();
    this.renderStats();
    this.renderPagination();
    this.updateLanguageHeaders();
  }

  renderTable() {
    const tbody = document.getElementById("runnersTableBody");
    const startIndex = (this.currentPage - 1) * this.itemsPerPage;
    const endIndex = startIndex + this.itemsPerPage;
    const pageRunners = this.filteredRunners.slice(startIndex, endIndex);

    tbody.innerHTML = "";

    pageRunners.forEach((runner) => {
      const row = document.createElement("tr");

      // Runner ID cell
      const idCell = document.createElement("td");
      idCell.className = "runner-id";
      idCell.textContent = runner.runner_id;
      row.appendChild(idCell);

      // Translation cells
      const languages = ["en", "fr", "ja", "ko", "zh-Hans"];
      languages.forEach((lang) => {
        const cell = document.createElement("td");
        cell.className = "translation-cell";

        if (this.selectedLanguages.includes(lang)) {
          const translation = runner.translations[lang] || "";
          cell.textContent = translation;
          // Add tooltip for long text
          if (translation.length > 20) {
            cell.title = translation;
          }
        } else {
          cell.classList.add("hidden");
        }

        row.appendChild(cell);
      });

      tbody.appendChild(row);
    });
  }

  renderStats() {
    const totalCount = document.getElementById("totalCount");
    const filteredCount = document.getElementById("filteredCount");

    totalCount.textContent = `Total: ${this.runners.length} runners`;
    filteredCount.textContent = `Showing: ${this.filteredRunners.length} runners`;
  }

  renderPagination() {
    const totalPages = Math.ceil(this.filteredRunners.length / this.itemsPerPage);
    const pageInfo = document.getElementById("pageInfo");
    const prevBtn = document.getElementById("prevPage");
    const nextBtn = document.getElementById("nextPage");

    pageInfo.textContent = `Page ${this.currentPage} of ${totalPages}`;

    prevBtn.disabled = this.currentPage <= 1;
    nextBtn.disabled = this.currentPage >= totalPages;

    // Update button styles
    prevBtn.style.opacity = prevBtn.disabled ? "0.5" : "1";
    nextBtn.style.opacity = nextBtn.disabled ? "0.5" : "1";
  }

  updateLanguageHeaders() {
    const languages = ["en", "fr", "ja", "ko", "zh-Hans"];
    languages.forEach((lang) => {
      const header = document.getElementById(`${lang}-header`);
      if (this.selectedLanguages.includes(lang)) {
        header.classList.remove("hidden");
      } else {
        header.classList.add("hidden");
      }
    });
  }

  showError(message) {
    const container = document.querySelector(".container");
    const errorDiv = document.createElement("div");
    errorDiv.className = "error-message";
    errorDiv.textContent = message;
    container.insertBefore(errorDiv, container.firstChild);
  }
}

// Initialize the viewer when the page loads
document.addEventListener("DOMContentLoaded", () => {
  new RunnerNamesViewer();
});
