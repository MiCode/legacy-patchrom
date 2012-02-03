.class Landroid/widget/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x1020225

    invoke-virtual {p0}, Landroid/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->cancelIncrement()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const v0, 0x1020227

    invoke-virtual {p0}, Landroid/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 67
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 71
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 51
    return-void
.end method
