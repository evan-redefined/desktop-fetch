#!/bin/bash

# Fungsi untuk membaca file sistem dengan aman
read_sys_info() {
    local file_path="/sys/class/dmi/id/$1"
    if [ ! -f "$file_path" ]; then
        echo "Not Available"
    elif [ ! -r "$file_path" ]; then
        echo -e "\e[31mPermission Denied (Run with sudo)\e[0m"
    else
        cat "$file_path"
    fi
}

# Pastikan script berjalan di Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Project ini hanya bisa berjalan di lingkungan Linux!"
    exit 1
fi

# Ambil data identitas laptop
VENDOR=$(read_sys_info "sys_vendor")
PRODUCT=$(read_sys_info "product_name")
SERIAL=$(read_sys_info "product_serial")
BIOS_VER=$(read_sys_info "bios_version")
BIOS_DATE=$(read_sys_info "bios_date")

# Kode warna ANSI untuk visual terminal
BOLD="\e[1m"
CYAN="\e[36m"
GREEN="\e[32m"
RESET="\e[0m"

# Tampilkan informasi ke layar
echo -e "\n${BOLD}${CYAN}💻 DEVICE INFORMATION${RESET}"
echo -e "${CYAN}-----------------------------------${RESET}"
echo -e "${BOLD}Brand/Vendor  :${RESET} $VENDOR"
echo -e "${BOLD}Device Model  :${RESET} $PRODUCT"
echo -e "${BOLD}Serial Number :${RESET} ${GREEN}$SERIAL${RESET}"
echo -e "${BOLD}BIOS Version  :${RESET} $BIOS_VER ($BIOS_DATE)"
echo -e "${CYAN}-----------------------------------${RESET}\n"
