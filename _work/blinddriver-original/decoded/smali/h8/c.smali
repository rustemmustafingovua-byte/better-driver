.class public final Lh8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/ArrayList;


# instance fields
.field public final a:[Ljava/nio/charset/CharsetEncoder;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lh8/c;->c:Ljava/util/ArrayList;

    const-string v19, "windows-1256"

    const-string v20, "Shift_JIS"

    const-string v1, "IBM437"

    const-string v2, "ISO-8859-2"

    const-string v3, "ISO-8859-3"

    const-string v4, "ISO-8859-4"

    const-string v5, "ISO-8859-5"

    const-string v6, "ISO-8859-6"

    const-string v7, "ISO-8859-7"

    const-string v8, "ISO-8859-8"

    const-string v9, "ISO-8859-9"

    const-string v10, "ISO-8859-10"

    const-string v11, "ISO-8859-11"

    const-string v12, "ISO-8859-13"

    const-string v13, "ISO-8859-14"

    const-string v14, "ISO-8859-15"

    const-string v15, "ISO-8859-16"

    const-string v16, "windows-1250"

    const-string v17, "windows-1251"

    const-string v18, "windows-1252"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    sget-object v3, Lh8/b;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/b;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lh8/c;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v4, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v1

    :cond_1
    if-ge v7, v5, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_2

    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-nez v5, :cond_5

    sget-object v6, Lh8/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :cond_4
    if-ge v8, v7, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    :cond_5
    if-nez v5, :cond_6

    move v3, v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    filled-new-array {p1}, [Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/nio/charset/CharsetEncoder;

    iput-object p1, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v1

    move v4, v3

    :goto_3
    if-ge v4, p1, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/nio/charset/CharsetEncoder;

    iget-object v7, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v8, v3, 0x1

    aput-object v5, v7, v3

    move v3, v8

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object p1, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    add-int/2addr v3, v2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    aput-object v0, p1, v3

    :goto_4
    if-eqz p2, :cond_b

    :goto_5
    iget-object p1, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, p1

    if-ge v1, v0, :cond_b

    aget-object p1, p1, v1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh8/c;->a:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v6, v1

    goto :goto_6

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    iput v6, p0, Lh8/c;->b:I

    return-void
.end method
