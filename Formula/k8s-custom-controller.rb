class K8sCustomController < Formula
    desc "K8s-Custom-Controller creates services and ingress for you, if you create deployment"
    homepage "https://github.com/manzil-infinity180/k8s-custom-controller"
    version "1.1.0"

    on_macos do 
        if Hardware::CPU.arm?
            url "https://github.com/manzil-infinity180/k8s-custom-controller/releases/download/v1.1.0/k8s-custom-controller_1.1.0_darwin_arm64.tar.gz"
            sha256 "d5b22934dfe7e62458c3a622dffafe374af27de1a50c4ff64ff82a42008d1bc8"

        elsif Hardware::CPU.intel?
            url "https://github.com/manzil-infinity180/k8s-custom-controller/releases/download/v1.1.0/k8s-custom-controller_1.1.0_darwin_amd64.tar.gz"
            sha256 "14de50937594237e8b5b1fa38430ec067669364a236b6b5b9a05ffa9ded8fc1b"
        end
    end

    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/manzil-infinity180/k8s-custom-controller/releases/download/v1.1.0/k8s-custom-controller_1.1.0_linux_arm64.tar.gz"
            sha256 "99a97d70f4534ae5bb08c3219418a5cc0a5afa08c43df75027b495ee2d6ec3ad"

        elsif Hardware::CPU.intel?
            url "https://github.com/manzil-infinity180/k8s-custom-controller/releases/download/v1.1.0/k8s-custom-controller_1.1.0_linux_amd64.tar.gz"
            sha256 "dfb3fe123c54df7b9875e47b73ab276b76839310bdd95cf8c4054b84c4de6962"
        end
    end

    def install
        bin.install "k8s-custom-controller"
    end

    test do
        system "#{bin}/k8s-custom-controller", "--help"
    end
end

    

