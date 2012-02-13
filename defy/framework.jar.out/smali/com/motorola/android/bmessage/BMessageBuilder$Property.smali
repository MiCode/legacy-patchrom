.class Lcom/motorola/android/bmessage/BMessageBuilder$Property;
.super Ljava/lang/Object;
.source "BMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/bmessage/BMessageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Property"
.end annotation


# instance fields
.field private mPropertyBytes:[[B

.field private mPropertyName:I

.field private mPropertyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->clear()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)[[B
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;

    check-cast v0, [[B

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B

    return-void
.end method

.method public setPropertyBytes([[B)V
    .locals 0
    .parameter "propertyBytes"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B

    return-void
.end method

.method public setPropertyName(I)V
    .locals 0
    .parameter "propertyName"

    .prologue
    iput p1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I

    return-void
.end method

.method public setPropertyValue(Ljava/lang/String;)V
    .locals 0
    .parameter "propertyValue"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;

    return-void
.end method
