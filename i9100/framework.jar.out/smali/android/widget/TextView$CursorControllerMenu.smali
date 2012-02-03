.class Landroid/widget/TextView$CursorControllerMenu;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorControllerMenu"
.end annotation


# static fields
.field static final DEBUG_CCM:Z


# instance fields
.field public mBtnClipBoard:Landroid/widget/LinearLayout;

.field public mBtnCopy:Landroid/widget/LinearLayout;

.field public mBtnCut:Landroid/widget/LinearLayout;

.field public mBtnPaste:Landroid/widget/LinearLayout;

.field public mBtnSearch:Landroid/widget/LinearLayout;

.field public mBtnSelect:Landroid/widget/LinearLayout;

.field public mBtnSelectAll:Landroid/widget/LinearLayout;

.field public mBtnShare:Landroid/widget/LinearLayout;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field private mControllerHeight:I

.field public mCurrentCountry:Ljava/lang/String;

.field private mCurrentMenuPosition:I

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field public mCursorControllerMenuArrowDownView:Landroid/view/View;

.field public mCursorControllerMenuArrowUpView:Landroid/view/View;

.field public mCursorControllerMenuView:Landroid/view/View;

.field public mCursorControllerParent:Landroid/widget/TextView;

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorControllerDragging:Z

.field private mLife:Z

.field private mMenuAnimation:Landroid/view/ViewGroup;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field private mSplitSelectAll:Landroid/widget/ImageView;

.field private mSplitShare:Landroid/widget/ImageView;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x3ea

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9436
    iput-object p1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9388
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9411
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mIsCursorControllerDragging:Z

    .line 9413
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    .line 9414
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9415
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9416
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9417
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9423
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 9427
    const/16 v0, 0x270f

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9437
    iput-object p2, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    .line 9438
    iput-object p3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    .line 9439
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    .line 9441
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 9443
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090014

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    .line 9444
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090015

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    .line 9445
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090016

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    .line 9447
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    .line 9448
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    .line 9449
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    .line 9450
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    .line 9451
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    .line 9452
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    .line 9453
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    .line 9454
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    .line 9456
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    .line 9457
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    .line 9458
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    .line 9459
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    .line 9460
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    .line 9461
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    .line 9462
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    .line 9475
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 9476
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    .line 9477
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    .line 9479
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9480
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9481
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9482
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9484
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9485
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9486
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9487
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9489
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9490
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9491
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9492
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9494
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9495
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9496
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9497
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9498
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9499
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9500
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9501
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9515
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x10202a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    .line 9518
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x10a004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    .line 9519
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/TextView$CursorControllerMenu$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$CursorControllerMenu$1;-><init>(Landroid/widget/TextView$CursorControllerMenu;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9528
    return-void
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .locals 5

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    .line 9801
    const/16 v0, 0x47

    .line 9803
    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9804
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42bfcccc

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9806
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9807
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9809
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9810
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9811
    return-void
.end method

.method public convertDipToPixel(F)I
    .locals 5
    .parameter "dip"

    .prologue
    .line 9701
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 9702
    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 9703
    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    .line 9706
    :cond_0
    float-to-int v1, p1

    return v1
.end method

.method public getCurrentMenuPosition()I
    .locals 1

    .prologue
    .line 10100
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    return v0
.end method

.method public getCursorControllerHeight()I
    .locals 1

    .prologue
    .line 10080
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    return v0
.end method

.method public getLife()Z
    .locals 1

    .prologue
    .line 10092
    iget-boolean v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .locals 1

    .prologue
    .line 10064
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10065
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10067
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10068
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10070
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10071
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10073
    :cond_2
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 10084
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10085
    const/4 v0, 0x1

    .line 10087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isThereAnyTextInClipboard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9788
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_1

    .line 9789
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 9790
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9791
    const/4 v1, 0x1

    .line 9796
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_0
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_0
    move v1, v3

    .line 9793
    goto :goto_0

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_1
    move v1, v3

    .line 9796
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x1020029

    .line 9616
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_0

    .line 9618
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020028

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9621
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_1

    .line 9623
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102001f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9626
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_2

    .line 9628
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9629
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9632
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_3

    .line 9634
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020020

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9635
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9638
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_4

    .line 9640
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9641
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9644
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_6

    .line 9646
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9648
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9649
    .local v3, selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9650
    .local v2, selEnd:I
    if-le v3, v2, :cond_5

    .line 9652
    move v4, v3

    .line 9653
    .local v4, tmp:I
    move v3, v2

    .line 9654
    move v2, v4

    .line 9656
    .end local v4           #tmp:I
    :cond_5
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9658
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9660
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V

    .line 9663
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_8

    .line 9665
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9667
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9668
    .restart local v3       #selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9669
    .restart local v2       #selEnd:I
    if-le v3, v2, :cond_7

    .line 9671
    move v4, v3

    .line 9672
    .restart local v4       #tmp:I
    move v3, v2

    .line 9673
    move v2, v4

    .line 9675
    .end local v4           #tmp:I
    :cond_7
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9677
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9679
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9680
    .local v1, intentShareText:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9681
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9683
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v6, 0x1040463

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 9685
    .local v0, intentChooser:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9687
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9693
    .end local v0           #intentChooser:Landroid/content/Intent;
    .end local v1           #intentShareText:Landroid/content/Intent;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_8
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_9

    .line 9695
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9696
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020191

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9698
    :cond_9
    return-void

    .line 9688
    .restart local v0       #intentChooser:Landroid/content/Intent;
    .restart local v1       #intentShareText:Landroid/content/Intent;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setCursorControllerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 10076
    iput p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    .line 10077
    return-void
.end method

.method public setLife(Z)V
    .locals 0
    .parameter "life"

    .prologue
    .line 10096
    iput-boolean p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 10097
    return-void
.end method

.method public showCursorControllerMenu()V
    .locals 24

    .prologue
    .line 9816
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->updateButtonVisibility()V

    .line 9817
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->calcMenuWidthHeight()V

    .line 9819
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 9820
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9939
    :goto_0
    return-void

    .line 9824
    :cond_0
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 9827
    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .line 9828
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 9830
    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9833
    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    if-nez v21, :cond_1

    .line 9835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9838
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9841
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 9842
    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .line 9845
    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9848
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .line 9852
    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9853
    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .line 9854
    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .line 9856
    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .line 9857
    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .line 9858
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .line 9859
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .line 9861
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 9864
    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 9865
    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9866
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .line 9869
    .local v5, activityPadding:I
    if-nez v5, :cond_6

    .line 9871
    if-gtz v12, :cond_4

    .line 9872
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 9893
    :cond_2
    :goto_1
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 9895
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    .line 9897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 9898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9901
    :cond_3
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    .line 9903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 9904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9910
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    .line 9911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 9912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9937
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 9873
    :cond_4
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_2

    .line 9874
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 9875
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_1

    .line 9877
    :cond_5
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_1

    .line 9882
    :cond_6
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_7

    .line 9883
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_1

    .line 9885
    :cond_7
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 9886
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_1

    .line 9888
    :cond_8
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_1

    .line 9906
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 9914
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    .line 9917
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 9918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9921
    :cond_c
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    .line 9923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 9924
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9929
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 9930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_3

    .line 9926
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4

    .line 9932
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3
.end method

.method public updateButtonVisibility()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "clipboardEx"

    .line 9710
    iput v3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9712
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9713
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9714
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9715
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9716
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9717
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9718
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9719
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9721
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9722
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9723
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9724
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9725
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9726
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9727
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9729
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getIsInTextSelectionMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9730
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9731
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9732
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9733
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9735
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9736
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9737
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9738
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9741
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 9742
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9743
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9744
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9745
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9785
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_1
    :goto_0
    return-void

    .line 9749
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9750
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9751
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9752
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9755
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9756
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9757
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9758
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9761
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9762
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9763
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9764
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9767
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 9768
    .restart local v0       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9769
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9770
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9771
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto :goto_0

    .line 9773
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9774
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v2}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)I

    move-result v2

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9775
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9776
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9777
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9778
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9779
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9780
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto/16 :goto_0
.end method

.method public updateCursorControllerMenu()V
    .locals 24

    .prologue
    .line 9944
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 9947
    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .line 9948
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 9950
    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9953
    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    if-nez v21, :cond_0

    .line 9955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9958
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9961
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 9962
    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .line 9965
    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9968
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .line 9972
    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9973
    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .line 9974
    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .line 9976
    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .line 9977
    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .line 9978
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .line 9979
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .line 9981
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 9984
    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 9985
    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9986
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .line 9989
    .local v5, activityPadding:I
    if-nez v5, :cond_5

    .line 9991
    if-gtz v12, :cond_3

    .line 9992
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 10013
    :cond_1
    :goto_0
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    .line 10015
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    .line 10017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 10018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10021
    :cond_2
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    .line 10023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 10024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10030
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    .line 10031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 10032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10055
    :goto_2
    return-void

    .line 9993
    :cond_3
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_1

    .line 9994
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 9995
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_0

    .line 9997
    :cond_4
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_0

    .line 10002
    :cond_5
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_6

    .line 10003
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_0

    .line 10005
    :cond_6
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 10006
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_0

    .line 10008
    :cond_7
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_0

    .line 10026
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 10034
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 10037
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 10038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10041
    :cond_b
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    .line 10043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 10044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10049
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 10050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_2

    .line 10046
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 10052
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2
.end method
