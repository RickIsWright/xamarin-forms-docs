

cd ${WORKSPACE}/markdown-snippet-injector
npm install

node . --root=../Xamarin-Forms/Examples/XamarinForms.documentation --docsroot=../Xamarin-Forms-docs --sourceext=".cs|.xaml" --snippettitles="C#|XAML"

cd ${WORKSPACE}/Xamarin-Forms-docs

bash deploy.sh
