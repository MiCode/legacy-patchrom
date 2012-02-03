.class public Landroid/view/inputmethod/ExtractedText;
.super Ljava/lang/Object;
.source "ExtractedText.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/ExtractedText;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SELECTING:I = 0x2

.field public static final FLAG_SINGLE_LINE:I = 0x1


# instance fields
.field public flags:I

.field public partialEndOffset:I

.field public partialStartOffset:I

.field public selectionEnd:I

.field public selectionStart:I

.field public startOffset:I

.field public text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/view/inputmethod/ExtractedText$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 91
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
