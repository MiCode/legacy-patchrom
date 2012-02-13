.class Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;
.super Ljava/lang/Object;
.source "LocaleSelect.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LocaleSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/blur/setup/LocaleSelect$UILocale;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->mCollator:Ljava/text/Collator;

    .line 124
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->updateComparatorToNewLocale(Ljava/util/Locale;)V

    .line 125
    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/blur/setup/LocaleSelect$UILocale;Lcom/motorola/blur/setup/LocaleSelect$UILocale;)I
    .locals 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 141
    if-eqz p1, :cond_1

    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    if-eqz p2, :cond_2

    .line 148
    const/4 v0, -0x1

    goto :goto_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    check-cast p1, Lcom/motorola/blur/setup/LocaleSelect$UILocale;

    .end local p1
    check-cast p2, Lcom/motorola/blur/setup/LocaleSelect$UILocale;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->compare(Lcom/motorola/blur/setup/LocaleSelect$UILocale;Lcom/motorola/blur/setup/LocaleSelect$UILocale;)I

    move-result v0

    return v0
.end method

.method public updateComparatorToNewLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->mCollator:Ljava/text/Collator;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->mCollator:Ljava/text/Collator;

    goto :goto_0
.end method
