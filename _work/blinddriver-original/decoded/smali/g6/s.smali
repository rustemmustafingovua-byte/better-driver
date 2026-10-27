.class public final Lg6/s;
.super Lg6/v;
.source "SourceFile"


# instance fields
.field public final p:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    iput p1, p0, Lg6/s;->p:I

    return-void
.end method


# virtual methods
.method public final Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lg6/s;->p:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, La6/u;->a()V

    throw v1

    :pswitch_0
    const-string p0, "["

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0x3a

    if-eqz p0, :cond_2

    const/16 p0, 0x5d

    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-eq p0, v2, :cond_1

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-le p1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    new-instance p0, Lh6/c;

    iget-object p1, p1, Lb6/i;->t:Ls5/k;

    const-string v0, "Bracketed IPv6 address must contain closing bracket"

    invoke-direct {p0, p1, v0, p2}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_3

    add-int/lit8 p1, p0, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, p2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object p0

    :pswitch_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    move p1, v3

    :goto_1
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    if-ge p1, p0, :cond_5

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_6

    if-ne v4, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move p1, v2

    :cond_6
    :goto_2
    if-gez p1, :cond_7

    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_7
    invoke-virtual {p2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    move v4, v3

    :goto_3
    if-ge v4, p2, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v1, :cond_9

    if-ne v5, v0, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    move v2, v4

    :cond_a
    if-gez v2, :cond_b

    new-instance p2, Ljava/util/Locale;

    invoke-direct {p2, p0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_b
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v4, "_#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_c

    new-instance v0, Ljava/util/Locale;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c
    const-string v5, ""

    if-lez v4, :cond_d

    if-le v4, v2, :cond_d

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_d
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance v1, Ljava/util/Locale$Builder;

    invoke-direct {v1}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_10

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    :cond_10
    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, p2, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_5
    :try_start_1
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Pattern, problem: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0, v2}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_6
    :try_start_2
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    const-string v0, "Unrecognized currency"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0, v2}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_7
    invoke-virtual {p1}, Lb6/i;->u()Lt6/p;

    move-result-object p0

    invoke-virtual {p0, p2}, Lt6/p;->h(Ljava/lang/String;)Lb6/l;

    move-result-object p0

    return-object p0

    :pswitch_8
    :try_start_3
    invoke-virtual {p1}, Lb6/i;->u()Lt6/p;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lt6/p;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p2

    invoke-static {p2}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_9
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_b
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lg6/s;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Z
    .locals 1

    iget p0, p0, Lg6/s;->p:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lg6/s;->p:I

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    invoke-super {p0, p1}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    return-object p0

    :cond_1
    const-string p0, ""

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method
