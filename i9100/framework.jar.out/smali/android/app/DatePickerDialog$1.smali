.class Landroid/app/DatePickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/DatePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    #getter for: Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v0}, Landroid/app/DatePickerDialog;->access$000(Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 221
    iget-object v0, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    #getter for: Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Landroid/app/DatePickerDialog;->access$100(Landroid/app/DatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    #getter for: Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Landroid/app/DatePickerDialog;->access$100(Landroid/app/DatePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 226
    :cond_0
    return-void
.end method
