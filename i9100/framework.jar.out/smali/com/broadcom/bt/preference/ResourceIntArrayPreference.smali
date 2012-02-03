.class public Lcom/broadcom/bt/preference/ResourceIntArrayPreference;
.super Landroid/preference/DialogPreference;
.source "ResourceIntArrayPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ResourceIntArrayPreference"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mClickedDialogEntryIndex:I

.field protected mEntryValues:[I

.field private mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

.field protected mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 47
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->findIndexOfValue(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-nez v0, :cond_0

    .line 151
    const/4 v0, -0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/SearchUtil;->binarySearch([II)I

    move-result v0

    goto :goto_0
.end method

.method public getEntryValues()[I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    return-object v0
.end method

.method public getPreferencedChangeListener()Lcom/broadcom/bt/preference/IPreferenceChangeListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/broadcom/bt/preference/IPreferenceChangeListener;->onPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 193
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    iget v2, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    aget v0, v1, v2

    .line 196
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V

    .line 200
    .end local v0           #value:I
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 224
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 164
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ResourceListPreference requires an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    .line 171
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;-><init>(Lcom/broadcom/bt/preference/ResourceIntArrayPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;

    move-object v1, v0

    .line 266
    .local v1, myState:Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;
    invoke-virtual {v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget v2, v1, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;->value:I

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 247
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 254
    :goto_0
    return-object v2

    .line 252
    :cond_0
    new-instance v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 253
    .local v0, myState:Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;->value:I

    move-object v2, v0

    .line 254
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    const-string v2, "ResourceIntArrayPreference"

    .line 229
    if-eqz p1, :cond_0

    .line 231
    :try_start_0
    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getPersistedInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local p2
    :goto_0
    return-void

    .line 232
    .restart local p2
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ResourceIntArrayPreference"

    const-string v1, "Unable to restore persisted value "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 237
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 239
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ResourceIntArrayPreference"

    const-string v1, "Unable to set to default value "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdapter(Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 76
    invoke-virtual {p1}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->get()[I

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    .line 77
    return-void
.end method

.method public setPreferenceChangedListener(Lcom/broadcom/bt/preference/IPreferenceChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    .line 211
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 97
    iput p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    .line 98
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->persistInt(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->notifyChanged()V

    .line 103
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V

    .line 122
    :cond_0
    return-void
.end method
