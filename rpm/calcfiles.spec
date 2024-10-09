Name:           calcfiles
Version:        1.0
Release:        1%{?dist}
Summary:        A simple script to calculate files in a directory
Requires:       unzip

License:        MIT
URL:            https://github.com/Maxrule/Systema
Source0:        main.zip

BuildArch:      noarch

%description
calc_files.sh is a simple script that calculates the number of files in a directory.

%prep
# Unzip the source archive
unzip -o %{SOURCE0}
# Change to the extracted directory
cd Systema-main/
ls -la

%install
mkdir -p %{buildroot}/usr/bin
# Install the script to the build root
install -m 755 calc_files.sh %{buildroot}/usr/bin/calc_files

%files
/usr/bin/calc_files

%changelog
* Wed Oct 09 2024 Kovgan Maxim <maxim.kov4@gmail.com> - 1.0-1
- Initial build
