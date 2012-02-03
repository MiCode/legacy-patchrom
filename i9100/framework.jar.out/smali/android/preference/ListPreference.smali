.class public Landroid/preference/ListPreference;
.super Landroid/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method static synthetic access$002(Landroid/preference/ListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 167
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 169
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 174
    .end local v0           #i:I
    :goto_1
    return v1

    .line 168
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 157
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 217
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 227
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 185
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    invoke-direct {p0}, Landroid/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 191
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Landroid/preference/ListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference$1;-><init>(Landroid/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/ListPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference$SavedState;

    move-object v1, v0

    .line 257
    .local v1, myState:Landroid/preference/ListPreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 258
    iget-object v2, v1, Landroid/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 238
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 245
    :goto_0
    return-object v2

    .line 243
    :cond_0
    new-instance v0, Landroid/preference/ListPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 244
    .local v0, myState:Landroid/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    move-object v2, v0

    .line 245
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 233
    return-void

    .line 232
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 69
    iput-object p1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 70
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 97
    iput-object p1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 98
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 124
    iput-object p1, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 127
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method
