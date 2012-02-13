.class Lcom/motorola/blur/settings/EditAccountActivity$1;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EditAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/motorola/blur/util/authentication/Authentication;)V
    .locals 1
    .parameter "authenticator"

    .prologue
    .line 190
    new-instance v0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity$1$1;-><init>(Lcom/motorola/blur/settings/EditAccountActivity$1;Lcom/motorola/blur/util/authentication/Authentication;)V

    invoke-virtual {v0}, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->start()V

    .line 276
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method
