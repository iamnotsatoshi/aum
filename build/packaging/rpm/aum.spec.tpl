Name:       {NAME}
Version:    {VERSION}
Release:    1
Summary:    {DESCRIPTION}
License:    LGPLv2+

%description
{DESCRIPTION}

%prep

%build

%install
mkdir -p %{buildroot}/usr
cp -r ./usr/local/include %{buildroot}%{_includedir}
cp -r ./usr/local/lib %{buildroot}/%{_libdir}

%files
%{_includedir}
%{_libdir}/libaum.so
%{_libdir}/pkgconfig/aum.pc

%changelog

