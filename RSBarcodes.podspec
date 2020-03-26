require "json"

json = File.read(File.join(__dir__, "package.json"))
package = JSON.parse(json).deep_symbolize_keys

Pod::Spec.new do |s|
  s.name = "RevRSBarcodes" 
  s.version = package[:version]
  s.license = { type: "MIT" }
  s.summary      = "1D and 2D barcodes scanner and generators for iOS 7 with delightful controls."
  s.homepage     = "https://github.com/yeahdongcn/RSBarcodes"
  s.author       = { "R0CKSTAR" => "yeahdongcn@gmail.com", "张玺" => "zhangxi_1989@sina.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/yeahdongcn/RSBarcodes.git', :tag => "#{s.version}" }
  s.source_files = 'RSBarcodes/*.{h,m}'
  s.frameworks   = ['CoreImage', 'AVFoundation']
  s.requires_arc = true
end
