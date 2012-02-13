.class Lcom/android/internal/policy/impl/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ftr_ringer_switch_enable"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mRingerSwitchFlag:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$002(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method
