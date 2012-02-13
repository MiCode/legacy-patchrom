.class Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source "CustomNumEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomNumEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomNumberEditorTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CustomNumEditPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/CustomNumEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;->this$0:Lcom/android/phone/CustomNumEditPreference;

    .line 152
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;->this$0:Lcom/android/phone/CustomNumEditPreference;

    #getter for: Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/CustomNumEditPreference;->access$000(Lcom/android/phone/CustomNumEditPreference;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;->this$0:Lcom/android/phone/CustomNumEditPreference;

    #getter for: Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/CustomNumEditPreference;->access$000(Lcom/android/phone/CustomNumEditPreference;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
