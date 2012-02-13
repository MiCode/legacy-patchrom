.class Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtPhonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhonebookResult"
.end annotation


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public nameColumn:I

.field public numberColumn:I

.field public typeColumn:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothAtPhonebook$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>()V

    return-void
.end method
