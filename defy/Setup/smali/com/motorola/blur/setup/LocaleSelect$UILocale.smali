.class Lcom/motorola/blur/setup/LocaleSelect$UILocale;
.super Ljava/lang/Object;
.source "LocaleSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LocaleSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UILocale"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field final locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 0
    .parameter "inLocale"
    .parameter "shouldUseDisplay"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    .line 94
    invoke-virtual {p0, p2}, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->setShouldUseDisplay(Z)V

    .line 95
    return-void
.end method


# virtual methods
.method public setShouldUseDisplay(Z)V
    .locals 2
    .parameter "shouldUseDisplay"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/motorola/blur/util/StringUtils;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->label:Ljava/lang/String;

    .line 102
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->label:Ljava/lang/String;

    return-object v0
.end method
