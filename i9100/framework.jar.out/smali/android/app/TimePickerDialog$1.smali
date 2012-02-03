.class Landroid/app/TimePickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/TimePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #getter for: Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;
    invoke-static {v0}, Landroid/app/TimePickerDialog;->access$000(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 197
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #getter for: Landroid/app/TimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Landroid/app/TimePickerDialog;->access$100(Landroid/app/TimePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #getter for: Landroid/app/TimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Landroid/app/TimePickerDialog;->access$100(Landroid/app/TimePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 202
    :cond_0
    return-void
.end method
