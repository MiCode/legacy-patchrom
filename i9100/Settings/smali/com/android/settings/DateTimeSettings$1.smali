.class Lcom/android/settings/DateTimeSettings$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 353
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Lcom/android/settings/DateTimeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, mProgressDialog:Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    const v3, 0x7f08060b

    invoke-virtual {v2, v3}, Lcom/android/settings/DateTimeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 361
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 362
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 363
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 366
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 367
    .local v1, mRebootHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/DateTimeSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettings$1$1;-><init>(Lcom/android/settings/DateTimeSettings$1;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    return-void
.end method
