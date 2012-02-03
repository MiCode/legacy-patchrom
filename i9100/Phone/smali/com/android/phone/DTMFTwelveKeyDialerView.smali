.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# instance fields
.field private mButtonGrid:Lcom/android/phone/ButtonGridLayout;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mLandscape:Landroid/view/View;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 105
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 106
    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 109
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getDialerOrientationView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 92
    .local v0, isPortrait:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    :goto_1
    return-object v1

    .line 91
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 92
    .restart local v0       #isPortrait:Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    goto :goto_1
.end method

.method resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V
    .locals 5
    .parameter "dialer"
    .parameter "orientation"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, 0x7f08004a

    .line 70
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 71
    iput p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 74
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    .line 81
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    .line 85
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 1
    .parameter "dialer"

    .prologue
    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    .line 64
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mPortrait:Landroid/view/View;

    .line 65
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mLandscape:Landroid/view/View;

    .line 66
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOrientation:I

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V

    .line 67
    return-void
.end method
