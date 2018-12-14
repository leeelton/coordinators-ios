platform :ios, '11.0'
inhibit_all_warnings!
use_frameworks!

target 'coordinators-ios' do
    pod 'RxSwift',    '~> 4.4'
    pod 'RxCocoa',    '~> 4.4'
    pod 'SwiftLint'
end

# RxTest and RxBlocking make the most sense in the context of unit/integration tests
target 'coordinators-iosTests' do
    pod 'RxBlocking', '~> 4.4'
    pod 'RxTest',     '~> 4.4'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts target.name
  end
end