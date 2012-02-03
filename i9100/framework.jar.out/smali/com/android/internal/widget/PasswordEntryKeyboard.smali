.class public Lcom/android/internal/widget/PasswordEntryKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final KEYCODE_SPACE:I = 0x20

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboard"

.field static sSpacebarVerticalCorrection:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mExtensionResId:I

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mLocale:Ljava/util/Locale;

.field private mOldShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mOldShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mRes:Landroid/content/res/Resources;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 62
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mRes:Landroid/content/res/Resources;

    .line 74
    const v1, 0x1080363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    const v1, 0x1080364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    const v1, 0x1080354

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    const v1, 0x1080365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 81
    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 1
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 88
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 8
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v7, 0x0

    .line 93
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 94
    .local v0, key:Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v6, v1, v7

    .line 95
    .local v6, code:I
    if-ltz v6, :cond_1

    const/16 v1, 0xa

    if-eq v6, v1, :cond_1

    const/16 v1, 0x20

    if-lt v6, v1, :cond_0

    const/16 v1, 0x7f

    if-le v6, v1, :cond_1

    .line 97
    :cond_0
    const-string v1, " "

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->setEnabled(Z)V

    .line 100
    :cond_1
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v7

    sparse-switch v1, :sswitch_data_0

    .line 111
    :goto_0
    return-object v0

    .line 102
    :sswitch_0
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 105
    :sswitch_1
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 108
    :sswitch_2
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method enableShiftLock()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 147
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 149
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v1, v1, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v1, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    invoke-virtual {v1}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->enableShiftLock()V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_1
    return-void
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 213
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method setEnterKeyResources(Landroid/content/res/Resources;III)V
    .locals 4
    .parameter "res"
    .parameter "previewId"
    .parameter "iconId"
    .parameter "labelId"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    :cond_0
    return-void
.end method

.method setShiftLocked(Z)V
    .locals 3
    .parameter "shiftLocked"

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 166
    if-eqz p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 173
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    goto :goto_0
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "shiftState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, shiftChanged:Z
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_4

    .line 189
    if-nez p1, :cond_2

    .line 190
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-eqz v1, :cond_1

    move v0, v3

    .line 191
    :goto_0
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    move v1, v0

    .line 203
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 190
    goto :goto_0

    .line 194
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v1, :cond_0

    .line 195
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v1, :cond_3

    move v0, v3

    .line 196
    :goto_3
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 197
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 198
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 195
    goto :goto_3

    .line 201
    :cond_4
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_2
.end method
