.class public Lio/flutter/view/AccessibilityStringBuilder;
.super Ljava/lang/Object;
.source "AccessibilityStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;,
        Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;,
        Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;,
        Lio/flutter/view/AccessibilityStringBuilder$SpellOutStringAttribute;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addAttributes(Ljava/util/List;)Lio/flutter/view/AccessibilityStringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;",
            ">;)",
            "Lio/flutter/view/AccessibilityStringBuilder;"
        }
    .end annotation

    .line 57
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;>;"
    iput-object p1, p0, Lio/flutter/view/AccessibilityStringBuilder;->attributes:Ljava/util/List;

    .line 58
    return-object p0
.end method

.method addLocale(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lio/flutter/view/AccessibilityStringBuilder;->locale:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method addString(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lio/flutter/view/AccessibilityStringBuilder;->string:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method addUrl(Ljava/lang/String;)Lio/flutter/view/AccessibilityStringBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lio/flutter/view/AccessibilityStringBuilder;->url:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method build()Ljava/lang/CharSequence;
    .locals 9

    .line 72
    iget-object v0, p0, Lio/flutter/view/AccessibilityStringBuilder;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->string:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    .local v0, "spannableString":Landroid/text/SpannableString;
    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->attributes:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;

    .line 78
    .local v3, "attribute":Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;
    iget-object v4, v3, Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;->type:Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;

    invoke-virtual {v4}, Lio/flutter/view/AccessibilityStringBuilder$StringAttributeType;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 87
    :pswitch_0
    move-object v4, v3

    check-cast v4, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;

    .line 88
    .local v4, "localeAttribute":Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;
    iget-object v5, v4, Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;->locale:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 89
    .local v5, "locale":Ljava/util/Locale;
    new-instance v6, Landroid/text/style/LocaleSpan;

    invoke-direct {v6, v5}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 90
    .local v6, "localeSpan":Landroid/text/style/LocaleSpan;
    iget v7, v3, Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;->start:I

    iget v8, v3, Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;->end:I

    invoke-virtual {v0, v6, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    goto :goto_1

    .line 81
    .end local v4    # "localeAttribute":Lio/flutter/view/AccessibilityStringBuilder$LocaleStringAttribute;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "localeSpan":Landroid/text/style/LocaleSpan;
    :pswitch_1
    new-instance v4, Landroid/text/style/TtsSpan$Builder;

    const-string v5, "android.type.verbatim"

    invoke-direct {v4, v5}, Landroid/text/style/TtsSpan$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    .line 82
    .local v4, "ttsSpan":Landroid/text/style/TtsSpan;
    iget v5, v3, Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;->start:I

    iget v6, v3, Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;->end:I

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    nop

    .line 94
    .end local v3    # "attribute":Lio/flutter/view/AccessibilityStringBuilder$StringAttribute;
    .end local v4    # "ttsSpan":Landroid/text/style/TtsSpan;
    :goto_1
    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v3, p0, Lio/flutter/view/AccessibilityStringBuilder;->url:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v3, p0, Lio/flutter/view/AccessibilityStringBuilder;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .end local v1    # "urlSpan":Landroid/text/style/URLSpan;
    :cond_2
    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->locale:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->locale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p0, Lio/flutter/view/AccessibilityStringBuilder;->locale:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 103
    .local v1, "localeObject":Ljava/util/Locale;
    new-instance v3, Landroid/text/style/LocaleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 104
    .local v3, "localeSpan":Landroid/text/style/LocaleSpan;
    iget-object v4, p0, Lio/flutter/view/AccessibilityStringBuilder;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    .end local v1    # "localeObject":Ljava/util/Locale;
    .end local v3    # "localeSpan":Landroid/text/style/LocaleSpan;
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
