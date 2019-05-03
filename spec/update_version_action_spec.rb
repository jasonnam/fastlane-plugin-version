describe Fastlane::Actions::UpdateVersionAction do
  describe "#run" do
    it "updates version and build version" do
      expect(Fastlane::Actions::SetInfoPlistValueAction).to receive(:run).with({ path: "path/to/Info.plist", key: "CFBundleShortVersionString", value: "1.0.0" }).ordered
      expect(Fastlane::Actions::SetInfoPlistValueAction).to receive(:run).with({ path: "path/to/Info.plist", key: "CFBundleVersion", value: 1234 }).ordered

      Fastlane::Actions::UpdateVersionAction.run(plist: "path/to/Info.plist", version: "1.0.0", build_version: 1234)
    end

    it "updates version" do
      expect(Fastlane::Actions::SetInfoPlistValueAction).to receive(:run).with({ path: "path/to/Info.plist", key: "CFBundleShortVersionString", value: "1.0.0" }).ordered

      Fastlane::Actions::UpdateVersionAction.run(plist: "path/to/Info.plist", version: "1.0.0")
    end

    it "updates build version" do
      expect(Fastlane::Actions::SetInfoPlistValueAction).to receive(:run).with({ path: "path/to/Info.plist", key: "CFBundleVersion", value: 1234 }).ordered

      Fastlane::Actions::UpdateVersionAction.run(plist: "path/to/Info.plist", build_version: 1234)
    end
  end
end
