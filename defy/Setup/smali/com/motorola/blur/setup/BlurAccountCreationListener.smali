.class public interface abstract Lcom/motorola/blur/setup/BlurAccountCreationListener;
.super Ljava/lang/Object;
.source "BlurAccountCreationListener.java"


# virtual methods
.method public abstract onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V
.end method

.method public abstract onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
.end method

.method public abstract onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
.end method
