.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$1;,
        Landroid/webkit/WebTextView$OutlineDrawable;,
        Landroid/webkit/WebTextView$AutoCompleteAdapter;
    }
.end annotation


# static fields
.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREVNEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field static final mPasswordAdjustXPadding:I = 0x5


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCharacter:[C

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mMaxLength:I

.field private mNodeName:Ljava/lang/String;

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 134
    const/4 v0, 0x0

    const v1, 0x10102b9

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 135
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 137
    return-void
.end method

.method private createBackground()V
    .locals 4

    .prologue
    .line 802
    iget-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 818
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v2, Landroid/webkit/WebTextView$OutlineDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>(Landroid/webkit/WebTextView$1;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 807
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 810
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 811
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v0, v2, 0x1

    .line 813
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 817
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private lineUpScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 317
    .local v0, layout:Landroid/text/Layout;
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 318
    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-static {p0, v0, v2}, Landroid/text/method/Touch;->getMaxScrollX(Landroid/widget/TextView;Landroid/text/Layout;I)I

    move-result v2

    int-to-float v1, v2

    .line 319
    .local v1, maxScrollX:F
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v2, :cond_0

    .line 320
    const-string/jumbo v2, "webtextview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v3, v1, v5

    if-lez v3, :cond_2

    iget v3, p0, Landroid/view/View;->mScrollX:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    :goto_0
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->scrollFocusedTextInput(FI)V

    .line 326
    .end local v1           #maxScrollX:F
    :cond_1
    return-void

    .restart local v1       #maxScrollX:F
    :cond_2
    move v3, v5

    .line 323
    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 679
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 680
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 829
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 830
    const/16 p1, 0x1f40

    .line 831
    :cond_0
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 835
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 839
    return-void
.end method


# virtual methods
.method bringIntoView()V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->bringPointIntoView(I)Z

    .line 672
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 298
    :goto_0
    return v3

    .line 145
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    move v9, v3

    .line 146
    .local v9, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 148
    .local v11, keyCode:I
    const/4 v10, 0x0

    .line 149
    .local v10, isArrowKey:Z
    packed-switch v11, :pswitch_data_0

    .line 163
    :goto_2
    const/16 v3, 0x3d

    if-ne v3, v11, :cond_5

    .line 164
    if-eqz v9, :cond_1

    .line 165
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 167
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 145
    .end local v9           #down:Z
    .end local v10           #isArrowKey:Z
    .end local v11           #keyCode:I
    :cond_2
    const/4 v3, 0x0

    move v9, v3

    goto :goto_1

    .line 154
    .restart local v9       #down:Z
    .restart local v10       #isArrowKey:Z
    .restart local v11       #keyCode:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 155
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 159
    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 170
    .local v17, text:Landroid/text/Spannable;
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 174
    .local v5, oldLength:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_6

    if-nez v5, :cond_6

    .line 175
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 176
    const/4 v3, 0x1

    goto :goto_0

    .line 179
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_b

    const/16 v3, 0x42

    if-ne v3, v11, :cond_b

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 184
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_9

    .line 185
    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 189
    :cond_9
    if-nez v9, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    .end local v5           #oldLength:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 196
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 198
    :cond_a
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 199
    .restart local v5       #oldLength:I
    :cond_b
    const/16 v3, 0x17

    if-ne v3, v11, :cond_10

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 202
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 204
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_e

    .line 205
    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 209
    :cond_e
    if-nez v9, :cond_f

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 213
    :cond_f
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 217
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_11

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 220
    :cond_11
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 221
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 223
    .local v13, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_13

    const/4 v3, 0x1

    move v12, v3

    .line 228
    .local v12, maxedOut:Z
    :goto_3
    if-eqz v12, :cond_14

    if-eq v13, v14, :cond_14

    .line 229
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 244
    const/16 v3, 0x42

    if-ne v3, v11, :cond_12

    .line 248
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 250
    :cond_12
    if-eqz v12, :cond_16

    if-nez v10, :cond_16

    const/16 v3, 0x43

    if-eq v11, v3, :cond_16

    .line 251
    if-ne v13, v14, :cond_15

    .line 253
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 223
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_13
    const/4 v3, 0x0

    move v12, v3

    goto :goto_3

    .line 231
    .restart local v12       #maxedOut:Z
    :cond_14
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 254
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 262
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 263
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 264
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 266
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 281
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 285
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_18

    if-nez v9, :cond_18

    .line 286
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 289
    :cond_18
    if-eqz v10, :cond_1a

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 295
    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 298
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 309
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 331
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 337
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onDrawSubstitute()V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCursorControllerPositions()V

    .line 359
    return-void
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 392
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 365
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 371
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 372
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 373
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 382
    :pswitch_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 384
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 386
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 439
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 441
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 398
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v1

    .line 403
    .local v1, prevInputType:I
    if-ne v1, v5, :cond_1

    .line 404
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 411
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 412
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 431
    .end local v1           #prevInputType:I
    :cond_0
    :goto_1
    return v6

    .line 406
    .restart local v1       #prevInputType:I
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 409
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_0

    .line 414
    .end local v1           #prevInputType:I
    :cond_2
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v0

    .line 419
    .local v0, nextInputType:I
    if-ne v0, v5, :cond_3

    .line 420
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 427
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 428
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 422
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 425
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 446
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 447
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 7
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 451
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-eqz v1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 456
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 458
    .local v6, sp:Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 459
    .local v4, candStart:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 460
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 462
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    .end local v6           #sp:Landroid/text/Spannable;
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 464
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v1, :cond_3

    .line 465
    const-string/jumbo v1, "webtextview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSelectionChanged selStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 469
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 475
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 481
    .local v17, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 487
    if-nez p4, :cond_2

    .line 488
    if-lez p3, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0

    .line 505
    :cond_2
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 506
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 508
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 509
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_6

    const/4 v5, 0x1

    move v11, v5

    .line 510
    .local v11, cannotUseKeyEvents:Z
    :goto_1
    if-eqz v11, :cond_7

    const/4 v5, 0x0

    move v12, v5

    .line 511
    .local v12, charactersFromKeyEvents:I
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_3

    if-eqz v11, :cond_8

    .line 512
    :cond_3
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 528
    .end local v8           #replace:Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v11, :cond_a

    .line 529
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 530
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 533
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 534
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 530
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 509
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_6
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 510
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_7
    const/4 v5, 0x1

    move v12, v5

    goto :goto_2

    .line 520
    .restart local v12       #charactersFromKeyEvents:I
    :cond_8
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v5, :cond_9

    .line 521
    const-string/jumbo v5, "webtextview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTextChanged start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " start + before="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p2, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_3

    .line 538
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 624
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 545
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 551
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 552
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 553
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 554
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 557
    :pswitch_1
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_0

    .line 558
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 559
    const/4 v8, 0x0

    goto :goto_1

    .line 561
    :cond_0
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 562
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 563
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 564
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 565
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 566
    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 567
    .local v1, dx:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 571
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 572
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_1

    if-le v2, v7, :cond_2

    .line 574
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 575
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 576
    const/4 v8, 0x1

    goto :goto_1

    .line 578
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 583
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 585
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_5

    .line 587
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_4

    .line 588
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 590
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 592
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 593
    .local v5, scrolled:Z
    if-eqz v5, :cond_5

    .line 594
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 595
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 596
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 599
    .end local v5           #scrolled:Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 602
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 603
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_6

    .line 604
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 605
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 607
    :cond_6
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_7

    .line 610
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 611
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_7

    .line 612
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 616
    :cond_7
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_8

    .line 617
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 619
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 629
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 647
    :goto_0
    return v2

    .line 632
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 633
    goto :goto_0

    .line 637
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 638
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 641
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 642
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 645
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 647
    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 653
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 664
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 666
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "rectangle"

    .prologue
    .line 1060
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->inAnimateZoom()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    sget-boolean v0, Landroid/webkit/WebView;->mInUserScroll:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    sget-boolean v0, Landroid/webkit/WebView;->mInUserRotate:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1067
    :cond_0
    const-string/jumbo v0, "webtextview"

    const-string v1, "....Doing a super.requestRectangleOnScreen...."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1070
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 690
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$000(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 692
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 693
    return-void
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 734
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, v2

    .line 735
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 745
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 746
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 751
    :cond_0
    :goto_1
    return-void

    .line 734
    .end local v0           #selection:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 749
    .restart local v0       #selection:I
    :cond_2
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method setInPassword(Z)V
    .locals 1
    .parameter "inPassword"

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 762
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 766
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 767
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    return-void

    .line 766
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 767
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 823
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 825
    return-void
.end method

.method setNodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 853
    iput-object p1, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    .line 854
    return-void
.end method

.method setNodePointer(I)V
    .locals 0
    .parameter "ptr"

    .prologue
    .line 848
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 849
    return-void
.end method

.method setRect(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 868
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 869
    .local v1, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v1, :cond_1

    .line 870
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 879
    .restart local v1       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    .line 880
    .local v0, inputType:I
    and-int/lit16 v2, v0, 0xfff

    .line 882
    .local v2, variation:I
    const/16 v3, 0x81

    if-ne v2, v3, :cond_0

    .line 884
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 887
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v4, v4, v4}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 892
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 893
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    :goto_1
    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 899
    invoke-static {p4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 900
    return-void

    .line 872
    .end local v0           #inputType:I
    .end local v2           #variation:I
    :cond_1
    iput p1, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 873
    iput p2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 874
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 875
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 895
    .restart local v0       #inputType:I
    .restart local v2       #variation:I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 906
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 908
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 909
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 910
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 911
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 912
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 921
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 923
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 924
    .local v3, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 925
    .local v2, selEnd:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 926
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 927
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 928
    .local v1, newLength:I
    if-le v3, v1, :cond_0

    move v3, v1

    .line 929
    :cond_0
    if-le v2, v1, :cond_1

    move v2, v1

    .line 930
    :cond_1
    invoke-static {v0, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 931
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 932
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 933
    return-void
.end method

.method setType(I)V
    .locals 14
    .parameter "type"

    .prologue
    const/4 v13, 0x0

    .line 944
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v10, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 945
    :cond_0
    const/4 v9, 0x1

    .line 946
    .local v9, single:Z
    const/4 v3, 0x0

    .line 947
    .local v3, inPassword:Z
    const/4 v5, -0x1

    .line 948
    .local v5, maxLength:I
    const/4 v4, 0x1

    .line 949
    .local v4, inputType:I
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 950
    const/4 v10, 0x4

    if-ne p1, v10, :cond_3

    .line 951
    or-int/lit8 v4, v4, 0x20

    .line 955
    :cond_1
    :goto_1
    const/high16 v2, -0x7000

    .line 957
    .local v2, imeOptions:I
    packed-switch p1, :pswitch_data_0

    .line 997
    or-int/lit8 v2, v2, 0x2

    .line 1000
    :goto_2
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1001
    if-eqz v9, :cond_2

    .line 1002
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v11

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1004
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v5

    .line 1005
    const/4 v10, 0x2

    if-eq p1, v10, :cond_2

    .line 1006
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v6

    .line 1007
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 1008
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v11, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v6, v11}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;I)V

    .line 1014
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v0

    .line 1015
    .local v0, action:I
    const/16 v7, 0xc

    .line 1016
    .local v7, next_mask:I
    const/4 v8, 0x3

    .line 1017
    .local v8, prev_mask:I
    and-int v10, v0, v7

    if-eqz v10, :cond_4

    and-int v10, v0, v8

    if-eqz v10, :cond_4

    .line 1018
    const-string v10, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1033
    :goto_3
    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1034
    invoke-direct {p0, v5}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1035
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1036
    invoke-virtual {p0, v4}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1037
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1038
    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 1039
    const/4 v1, 0x0

    .line 1040
    .local v1, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_0

    .line 953
    .end local v0           #action:I
    .end local v1           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    .end local v2           #imeOptions:I
    .end local v7           #next_mask:I
    .end local v8           #prev_mask:I
    :cond_3
    or-int/lit16 v4, v4, 0xa0

    goto :goto_1

    .line 959
    .restart local v2       #imeOptions:I
    :pswitch_0
    or-int/lit8 v2, v2, 0x2

    .line 960
    goto :goto_2

    .line 962
    :pswitch_1
    const/4 v9, 0x0

    .line 963
    const v4, 0x2c001

    .line 967
    or-int/lit8 v2, v2, 0x1

    .line 968
    goto :goto_2

    .line 970
    :pswitch_2
    const/4 v3, 0x1

    .line 971
    or-int/lit8 v2, v2, 0x2

    .line 972
    goto :goto_2

    .line 974
    :pswitch_3
    or-int/lit8 v2, v2, 0x3

    .line 975
    goto :goto_2

    .line 979
    :pswitch_4
    or-int/lit8 v2, v2, 0x2

    .line 980
    goto :goto_2

    .line 982
    :pswitch_5
    or-int/lit8 v4, v4, 0x2

    .line 986
    goto :goto_2

    .line 988
    :pswitch_6
    or-int/lit8 v4, v4, 0x3

    .line 990
    goto :goto_2

    .line 994
    :pswitch_7
    or-int/lit8 v2, v2, 0x2

    .line 995
    goto :goto_2

    .line 1020
    .restart local v0       #action:I
    .restart local v7       #next_mask:I
    .restart local v8       #prev_mask:I
    :cond_4
    and-int v10, v0, v8

    if-eqz v10, :cond_5

    .line 1021
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_3

    .line 1023
    :cond_5
    and-int v10, v0, v7

    if-eqz v10, :cond_6

    .line 1024
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_3

    .line 1029
    :cond_6
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_3

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1048
    return-void
.end method
