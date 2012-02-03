.class Landroid/widget/TimePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;I)V
    .locals 0
    .parameter
    .parameter "next_id"

    .prologue
    .line 418
    iput-object p1, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput p2, p0, Landroid/widget/TimePicker$TwKeyListener;->mNext:I

    .line 420
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 423
    iget-object v0, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$1000(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v3

    .line 436
    :goto_0
    return v0

    .line 426
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v0, v3

    .line 436
    goto :goto_0

    .line 428
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 429
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/TimePicker$TwKeyListener;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v2

    .line 430
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 434
    goto :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x3d -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
