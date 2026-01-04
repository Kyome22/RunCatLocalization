class RunnerNamesViewer {
  constructor() {
    this.runners = [];
    this.filteredRunners = [];
    this.currentPage = 1;
    this.itemsPerPage = 20;

    // Primary language (always English)
    this.primaryLanguage = "en";

    // Additional languages in alphabetical order by language code
    this.supportedLanguages = ["de", "fr", "ja", "ko", "zh-Hans", "zh-Hant"];

    // Selected additional language index (English is always selected)
    this.selectedLanguageIndex = 0; // First additional language by default

    this.init();
  }

  async init() {
    await this.loadData();
    this.setupEventListeners();
    this.setDefaultLanguageSelection();
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

  setDefaultLanguageSelection() {
    // Select the first additional language (index 0) by default
    const firstAdditionalLanguage = this.supportedLanguages[0];
    const radioButton = document.querySelector(
      `input[name="language"][value="${firstAdditionalLanguage}"]`
    );
    if (radioButton) {
      radioButton.checked = true;
      this.updateSelectedLanguages();
      this.updateLanguageRadioStyles();
    }
  }

  setupEventListeners() {
    // Search functionality
    const searchInput = document.getElementById("searchInput");
    searchInput.addEventListener("input", (e) => {
      this.filterRunners(e.target.value);
    });

    // Language radio buttons
    const languageRadios = document.querySelectorAll(".language-radio input");
    languageRadios.forEach((radio) => {
      radio.addEventListener("change", () => {
        this.updateSelectedLanguages();
        this.updateLanguageRadioStyles();
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
    this.updateLanguageRadioStyles();
  }

  filterRunners(searchTerm) {
    if (!searchTerm.trim()) {
      this.filteredRunners = [...this.runners];
    } else {
      const term = searchTerm.toLowerCase();
      this.filteredRunners = this.runners.filter((runner) => {
        return (
          runner.runner_id.toLowerCase().includes(term) ||
          this.supportedLanguages.some((lang) => {
            const translation = runner.translations[lang];
            return translation && translation.toLowerCase().includes(term);
          })
        );
      });
    }

    this.currentPage = 1;
    this.render();
  }

  updateSelectedLanguages() {
    const radios = document.querySelectorAll(".language-radio input:checked");

    if (radios.length > 0) {
      const selectedValue = radios[0].value;
      const selectedIndex = this.supportedLanguages.indexOf(selectedValue);
      if (selectedIndex !== -1) {
        this.selectedLanguageIndex = selectedIndex;
      }
    } else {
      // Default to first additional language (index 0) if no language is selected
      this.selectedLanguageIndex = 0;
    }

    this.updateLanguageRadioStyles();
    this.render();
  }

  updateLanguageRadioStyles() {
    const languageLabels = document.querySelectorAll(".language-radio");
    languageLabels.forEach((label) => {
      const radio = label.querySelector("input");
      if (radio.checked) {
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
      const row = document.createElement("div");
      row.className = "table-row";

      // Image cell
      const imageCell = document.createElement("div");
      const img = document.createElement("img");
      img.src = `images/${runner.runner_id}.png`;
      img.alt = runner.runner_id;
      img.className = "runner-image";
      img.onerror = function () {
        this.style.display = "none";
      };
      imageCell.appendChild(img);
      row.appendChild(imageCell);

      // Runner ID cell
      const idCell = document.createElement("div");
      idCell.textContent = runner.runner_id;
      row.appendChild(idCell);

      // English cell (always visible)
      const enCell = document.createElement("div");
      const enTranslation = runner.translations[this.primaryLanguage] || "";
      enCell.textContent = enTranslation;
      if (enTranslation.length > 20) {
        enCell.title = enTranslation;
      }
      row.appendChild(enCell);

      // Additional language cell
      const additionalCell = document.createElement("div");
      const additionalLang = this.supportedLanguages[this.selectedLanguageIndex];
      const additionalTranslation = runner.translations[additionalLang] || "";
      additionalCell.textContent = additionalTranslation;
      if (additionalTranslation.length > 20) {
        additionalCell.title = additionalTranslation;
      }
      row.appendChild(additionalCell);

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
    const additionalHeader = document.getElementById("additional-header");
    const additionalLang = this.supportedLanguages[this.selectedLanguageIndex];
    const langNames = {
      de: "Deutsch",
      fr: "Français",
      ja: "日本語",
      ko: "한국어",
      "zh-Hans": "简体中文",
      "zh-Hant": "繁體中文"
    };
    additionalHeader.textContent = langNames[additionalLang] || "Additional Language";
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
