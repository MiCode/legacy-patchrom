.class Lcom/motorola/blur/authenticators/BlurAuthenticator$3;
.super Ljava/lang/Object;
.source "BlurAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/authenticators/BlurAuthenticator;->startAuthentication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/BlurAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$3;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->startAuth()V

    .line 204
    return-void
.end method
