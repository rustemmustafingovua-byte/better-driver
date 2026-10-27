.class public final Lorg/codehaus/janino/util/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/c;


# instance fields
.field public a:S

.field public b:S

.field public final c:Ljava/util/ArrayList;

.field public final d:S

.field public final e:S

.field public final f:S

.field public final g:[S

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.class.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\d+)\\.(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/codehaus/janino/util/t0;->a:S

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/codehaus/janino/util/t0;->b:S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/janino/util/t0;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/janino/util/t0;->k:Ljava/util/HashMap;

    iput-short p1, p0, Lorg/codehaus/janino/util/t0;->d:S

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/codehaus/janino/util/t0;->e:S

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p2

    :goto_0
    iput-short p2, p0, Lorg/codehaus/janino/util/t0;->f:S

    array-length p2, p4

    new-array p2, p2, [S

    iput-object p2, p0, Lorg/codehaus/janino/util/t0;->g:[S

    :goto_1
    array-length p2, p4

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lorg/codehaus/janino/util/t0;->g:[S

    aget-object p3, p4, p1

    invoke-virtual {p0, p3}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p3

    aput-short p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/t0;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/t0;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/t0;->j:Ljava/util/ArrayList;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unrecognized JVM class file version \""

    const-string p2, "\""

    invoke-static {p1, v0, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static o(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/codehaus/janino/util/h;

    invoke-virtual {v2, p0}, Lorg/codehaus/janino/util/h;->a(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/janino/util/t0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/janino/util/t0;->b(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "RuntimeInvisibleAnnotations"

    const-string v1, "RuntimeVisibleAnnotations"

    if-eqz p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {p0, v2, p4}, Lorg/codehaus/janino/util/t0;->j(Ljava/lang/String;Ljava/util/List;)Lorg/codehaus/janino/util/h;

    move-result-object v2

    check-cast v2, Lorg/codehaus/janino/util/f;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    move-object v0, v1

    :cond_1
    new-instance v2, Lorg/codehaus/janino/util/f;

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p1

    invoke-direct {v2, p1}, Lorg/codehaus/janino/util/f;-><init>(S)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, v2, Lorg/codehaus/janino/util/f;->b:Ljava/util/ArrayList;

    new-instance p4, Lorg/codehaus/janino/util/e;

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p0

    invoke-direct {p4, p0, p3}, Lorg/codehaus/janino/util/e;-><init>(SLjava/util/HashMap;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)S
    .locals 3

    sget-object v0, Lmb/o;->a:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lhb/b;

    const-string v0, "Attempt to convert non-class descriptor \""

    const-string v1, "\" into internal form"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    :goto_0
    new-instance v0, Lorg/codehaus/janino/util/m;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p1

    invoke-direct {v0, p1}, Lorg/codehaus/janino/util/m;-><init>(S)V

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lorg/codehaus/janino/util/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmb/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is neither a class nor an array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(I)S
    .locals 1

    new-instance v0, Lorg/codehaus/janino/util/q;

    invoke-direct {v0, p1}, Lorg/codehaus/janino/util/q;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;)S
    .locals 1

    new-instance v0, Lorg/codehaus/janino/util/x;

    invoke-direct {v0, p1}, Lorg/codehaus/janino/util/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p0

    return p0
.end method

.method public final f(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/janino/util/d0;
    .locals 6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_8

    new-instance v0, Lorg/codehaus/janino/util/y;

    const-string v1, "ConstantValue"

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v1

    instance-of v2, p4, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p4, Ljava/lang/String;

    new-instance v2, Lorg/codehaus/janino/util/w;

    invoke-virtual {p0, p4}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p4

    invoke-direct {v2, p4}, Lorg/codehaus/janino/util/w;-><init>(S)V

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p4

    goto/16 :goto_1

    :cond_0
    instance-of v2, p4, Ljava/lang/Byte;

    if-nez v2, :cond_7

    instance-of v2, p4, Ljava/lang/Short;

    if-nez v2, :cond_7

    instance-of v2, p4, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    instance-of v2, p4, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p4}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p4

    goto/16 :goto_1

    :cond_2
    instance-of v2, p4, Ljava/lang/Character;

    if-eqz v2, :cond_3

    check-cast p4, Ljava/lang/Character;

    invoke-virtual {p4}, Ljava/lang/Character;->charValue()C

    move-result p4

    invoke-virtual {p0, p4}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p4

    goto :goto_1

    :cond_3
    instance-of v2, p4, Ljava/lang/Float;

    if-eqz v2, :cond_4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    new-instance v2, Lorg/codehaus/janino/util/p;

    invoke-direct {v2, p4}, Lorg/codehaus/janino/util/p;-><init>(F)V

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p4

    goto :goto_1

    :cond_4
    instance-of v2, p4, Ljava/lang/Long;

    if-eqz v2, :cond_5

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance p4, Lorg/codehaus/janino/util/s;

    invoke-direct {p4, v2, v3}, Lorg/codehaus/janino/util/s;-><init>(J)V

    invoke-virtual {p0, p4}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p4

    goto :goto_1

    :cond_5
    instance-of v2, p4, Ljava/lang/Double;

    if-eqz v2, :cond_6

    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    new-instance p4, Lorg/codehaus/janino/util/n;

    invoke-direct {p4, v2, v3}, Lorg/codehaus/janino/util/n;-><init>(D)V

    invoke-virtual {p0, p4}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p4

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/codehaus/janino/util/j;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected constant value type \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p4}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p4

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v0, v1, p4, v2}, Lorg/codehaus/janino/util/y;-><init>(SSI)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v0, Lorg/codehaus/janino/util/d0;

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {p0, p3}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v4

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/janino/util/d0;-><init>(Lorg/codehaus/janino/util/t0;SSSLjava/util/ArrayList;)V

    iget-object p0, v1, Lorg/codehaus/janino/util/t0;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final g(Lorg/codehaus/janino/util/e0;)V
    .locals 3

    const-string v0, "InnerClasses"

    iget-object v1, p0, Lorg/codehaus/janino/util/t0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/janino/util/t0;->j(Ljava/lang/String;Ljava/util/List;)Lorg/codehaus/janino/util/h;

    move-result-object v2

    check-cast v2, Lorg/codehaus/janino/util/f0;

    if-nez v2, :cond_0

    new-instance v2, Lorg/codehaus/janino/util/f0;

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p0

    invoke-direct {v2, p0}, Lorg/codehaus/janino/util/f0;-><init>(S)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, v2, Lorg/codehaus/janino/util/f0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(SLjava/lang/String;Lmb/c6;)Lorg/codehaus/janino/util/i0;
    .locals 8

    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    iget-object v2, p3, Lmb/c6;->a:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Lmb/o;->c(Ljava/lang/String;)S

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    new-instance v2, Lorg/codehaus/janino/util/i0;

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v5

    invoke-virtual {p3}, Lmb/c6;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/codehaus/janino/util/i0;-><init>(Lorg/codehaus/janino/util/t0;SSSLjava/util/ArrayList;)V

    iget-object p0, v3, Lorg/codehaus/janino/util/t0;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    new-instance p0, Lorg/codehaus/janino/util/j;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Method \""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has too many parameters ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lorg/codehaus/janino/util/v;)S
    .locals 4

    iget-object v0, p0, Lorg/codehaus/janino/util/t0;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/codehaus/janino/util/t0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/codehaus/janino/util/v;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v3, 0xffff

    if-gt v1, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2
    new-instance p1, Lorg/codehaus/janino/util/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constant pool for class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/janino/util/t0;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has grown past JVM limit of 0xFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/lang/String;Ljava/util/List;)Lorg/codehaus/janino/util/h;
    .locals 4

    new-instance v0, Lorg/codehaus/janino/util/x;

    invoke-direct {v0, p1}, Lorg/codehaus/janino/util/x;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/codehaus/janino/util/t0;->k:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/janino/util/h;

    iget-short v2, v1, Lorg/codehaus/janino/util/h;->a:S

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/codehaus/janino/util/j;

    const-string p2, "Duplicate \""

    const-string v0, "\" attribute"

    invoke-static {p2, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public final k(S)Lorg/codehaus/janino/util/v;
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p1

    iget-object p0, p0, Lorg/codehaus/janino/util/t0;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/janino/util/v;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/codehaus/janino/util/j;

    const-string v0, "Invalid constant pool index "

    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(S)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/t0;->k(S)Lorg/codehaus/janino/util/v;

    move-result-object p0

    check-cast p0, Lorg/codehaus/janino/util/x;

    iget-object p0, p0, Lorg/codehaus/janino/util/x;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-short v0, p0, Lorg/codehaus/janino/util/t0;->e:S

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->k(S)Lorg/codehaus/janino/util/v;

    move-result-object v0

    check-cast v0, Lorg/codehaus/janino/util/m;

    iget-short v0, v0, Lorg/codehaus/janino/util/m;->a:S

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->l(S)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const p1, -0x35014542    # -8346975.0f

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short p1, p0, Lorg/codehaus/janino/util/t0;->b:S

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short p1, p0, Lorg/codehaus/janino/util/t0;->a:S

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object p1, p0, Lorg/codehaus/janino/util/t0;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/janino/util/v;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Lorg/codehaus/janino/util/v;->b(Ljava/io/DataOutputStream;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-short p1, p0, Lorg/codehaus/janino/util/t0;->d:S

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short p1, p0, Lorg/codehaus/janino/util/t0;->e:S

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short p1, p0, Lorg/codehaus/janino/util/t0;->f:S

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object p1, p0, Lorg/codehaus/janino/util/t0;->g:[S

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-short v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/codehaus/janino/util/t0;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/codehaus/janino/util/d0;

    iget-short v5, v4, Lorg/codehaus/janino/util/d0;->a:S

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v5, v4, Lorg/codehaus/janino/util/d0;->b:S

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v5, v4, Lorg/codehaus/janino/util/d0;->c:S

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v4, v4, Lorg/codehaus/janino/util/d0;->d:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lorg/codehaus/janino/util/t0;->o(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/codehaus/janino/util/t0;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/codehaus/janino/util/i0;

    iget-short v4, v3, Lorg/codehaus/janino/util/i0;->a:S

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v4, v3, Lorg/codehaus/janino/util/i0;->b:S

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v4, v3, Lorg/codehaus/janino/util/i0;->c:S

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v3, v3, Lorg/codehaus/janino/util/i0;->d:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lorg/codehaus/janino/util/t0;->o(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lorg/codehaus/janino/util/t0;->j:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lorg/codehaus/janino/util/t0;->o(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-short v0, p0, Lorg/codehaus/janino/util/t0;->e:S

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->k(S)Lorg/codehaus/janino/util/v;

    move-result-object v0

    check-cast v0, Lorg/codehaus/janino/util/m;

    iget-short v0, v0, Lorg/codehaus/janino/util/m;->a:S

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->l(S)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
