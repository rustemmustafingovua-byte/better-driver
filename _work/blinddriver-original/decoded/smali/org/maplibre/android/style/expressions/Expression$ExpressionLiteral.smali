.class public Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;
.super Lorg/maplibre/android/style/expressions/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/style/expressions/Expression$ValueExpression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpressionLiteral"
.end annotation


# instance fields
.field protected literal:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>()V

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->unwrapStringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    return-void
.end method

.method private static unwrapStringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    if-nez p0, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/maplibre/android/style/expressions/Expression;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const-string v0, "literal"

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->literal:Ljava/lang/Object;

    instance-of v0, p0, Lorg/maplibre/android/style/layers/PropertyValue;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    invoke-virtual {p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->toValue()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PropertyValue are not allowed as an expression literal, use value instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
