.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper$1;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper$1;->this$1:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper$1;->this$1:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->doSwap()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)V

    .line 309
    return-void
.end method
