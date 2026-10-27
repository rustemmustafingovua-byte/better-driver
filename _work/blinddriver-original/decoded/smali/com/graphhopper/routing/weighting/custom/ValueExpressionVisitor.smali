.class public Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/g7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;,
        Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmb/g7;"
    }
.end annotation


# static fields
.field private static final INFINITY:Ljava/lang/String;

.field private static final allowedMethodParents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final allowedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private invalidMessage:Ljava/lang/String;

.field private final result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

.field private final variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->INFINITY:Ljava/lang/String;

    const-string v0, "Math"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "duplicate element: "

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->allowedMethodParents:Ljava/util/Set;

    const-string v0, "sqrt"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->allowedMethods:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/graphhopper/routing/weighting/custom/ParseResult;Lcom/graphhopper/routing/weighting/custom/NameValidator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->lambda$findVariables$0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static findMinMax(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/graphhopper/routing/weighting/custom/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/graphhopper/routing/weighting/custom/b;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;I)V

    invoke-static {p0, v0}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;)Lcom/graphhopper/routing/weighting/custom/ParseResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->ok:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    new-instance v3, Lcom/graphhopper/json/MinMax;

    invoke-direct {v3, v1, v2, v1, v2}, Lcom/graphhopper/json/MinMax;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    :try_start_1
    iget-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lmb/p;

    invoke-direct {p1}, Lmb/p;-><init>()V

    const-class v0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lmb/p;->G(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;->evaluate()D

    move-result-wide p0

    new-instance v0, Lcom/graphhopper/json/MinMax;

    invoke-direct {v0, p0, p1, p0, p1}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Lhb/a; {:try_start_1 .. :try_end_1} :catch_1

    const-class v2, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {p1, p0, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMin(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v0

    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMax(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide p0

    new-instance v2, Lcom/graphhopper/json/MinMax;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    return-object v2

    :cond_1
    iget-object v0, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lmb/p;

    invoke-direct {v1}, Lmb/p;-><init>()V

    const-class v3, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4}, Lmb/p;->G(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;

    invoke-interface {p1, v0, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p1

    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMax(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;->evaluate(D)D

    move-result-wide v0

    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMin(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;->evaluate(D)D

    move-result-wide p0

    new-instance v2, Lcom/graphhopper/json/MinMax;

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/graphhopper/json/MinMax;-><init>(DD)V
    :try_end_2
    .catch Lhb/a; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently only a single EncodedValue is allowed on the right-hand side, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Value expression: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object p1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->invalidMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findVariables(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/graphhopper/routing/weighting/custom/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/graphhopper/routing/weighting/custom/b;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;I)V

    invoke-static {p0, v0}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;)Lcom/graphhopper/routing/weighting/custom/ParseResult;

    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->ok:Z

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 7
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_1
    iget-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance p1, Lmb/p;

    invoke-direct {p1}, Lmb/p;-><init>()V

    const-class v1, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v2}, Lmb/p;->G(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;

    .line 10
    invoke-interface {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$NoArgEvaluator;->evaluate()D

    move-result-wide v1

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, p0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Lhb/a; {:try_start_1 .. :try_end_1} :catch_1

    const-class v2, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz v1, :cond_1

    .line 12
    :try_start_2
    invoke-interface {p1, p0, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMin(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v1

    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMax(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    new-instance v3, Lmb/p;

    invoke-direct {v3}, Lmb/p;-><init>()V

    const-class v4, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Lmb/p;->G(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;

    .line 16
    invoke-interface {p1, v1, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMax(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v1

    .line 18
    invoke-interface {v3, v1, v2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;->evaluate(D)D

    move-result-wide v1

    .line 19
    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->getMin(Lcom/graphhopper/routing/ev/EncodedValue;)D

    move-result-wide v4

    .line 20
    invoke-interface {v3, v4, v5}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor$SingleArgEvaluator;->evaluate(D)D

    move-result-wide v3

    .line 21
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1
    :try_end_2
    .catch Lhb/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-ltz p1, :cond_2

    .line 22
    iget-object p0, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    return-object p0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal expression as it can result in a negative weight: "

    .line 24
    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently only a single EncodedValue is allowed on the right-hand side, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Value expression: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object p1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->invalidMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findVariables(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariablesForGroup(Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static findVariablesForGroup(Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/json/Statement;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0, p2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariablesForGroup(Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariables(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/json/Statement;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1, p2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariablesForGroup(Ljava/util/Set;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findVariables(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Every group of statements must start with an if-statement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMax(Lcom/graphhopper/routing/ev/EncodedValue;)D
    .locals 3

    instance-of v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxOrMaxStorableDecimal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/IntEncodedValue;->getMaxOrMaxStorableInt()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot use non-number data \'"

    const-string v2, "\' in value expression"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMin(Lcom/graphhopper/routing/ev/EncodedValue;)D
    .locals 3

    instance-of v0, p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMinStorableDecimal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/IntEncodedValue;->getMinStorableInt()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot use non-number data \'"

    const-string v2, "\' in value expression"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$findVariables$0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->INFINITY:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;)Lcom/graphhopper/routing/weighting/custom/ParseResult;
    .locals 5

    new-instance v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;

    invoke-direct {v0}, Lcom/graphhopper/routing/weighting/custom/ParseResult;-><init>()V

    :try_start_0
    new-instance v1, Lmb/d6;

    new-instance v2, Lmb/j6;

    const-string v3, "ignore"

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lmb/d6;-><init>(Lmb/j6;)V

    invoke-virtual {v1}, Lmb/d6;->w()Lmb/c1;

    move-result-object p0

    iget-object v1, v1, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v1}, Lg5/i;->z()Lmb/q6;

    move-result-object v1

    iget v1, v1, Lmb/q6;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->operators:Ljava/util/Set;

    new-instance v1, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;

    invoke-direct {v1, v0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;-><init>(Lcom/graphhopper/routing/weighting/custom/ParseResult;Lcom/graphhopper/routing/weighting/custom/NameValidator;)V

    invoke-virtual {p0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->ok:Z

    iget-object p0, v1, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->invalidMessage:Ljava/lang/String;

    iput-object p0, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->invalidMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isValidIdentifier(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/custom/NameValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public visitConstructorInvocation(Lmb/t1;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic visitConstructorInvocation(Lmb/t1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->visitConstructorInvocation(Lmb/t1;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public visitPackage(Lmb/j4;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic visitPackage(Lmb/j4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->visitPackage(Lmb/j4;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Boolean;
    .locals 7

    .line 2
    instance-of v0, p1, Lmb/p0;

    const-string v1, "\'"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lmb/p0;

    .line 3
    iget-object v0, p1, Lmb/p0;->f:[Ljava/lang/String;

    array-length v4, v0

    if-ne v4, v2, :cond_1

    .line 4
    aget-object p1, v0, v3

    .line 5
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6
    :cond_0
    const-string v0, "\' not available"

    .line 7
    invoke-static {v1, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 10
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "identifier "

    const-string v1, " invalid"

    .line 11
    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 13
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 14
    :cond_2
    instance-of v0, p1, Lmb/d3;

    if-eqz v0, :cond_3

    .line 15
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 16
    :cond_3
    instance-of v0, p1, Lmb/x5;

    const-string v4, "-"

    if-eqz v0, :cond_5

    check-cast p1, Lmb/x5;

    iget-object v0, p1, Lmb/x5;->f:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object v1, v1, Lcom/graphhopper/routing/weighting/custom/ParseResult;->operators:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object p1, p1, Lmb/x5;->g:Lmb/y4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 22
    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 23
    :cond_5
    instance-of v0, p1, Lmb/v3;

    if-eqz v0, :cond_8

    check-cast p1, Lmb/v3;

    iget-object v0, p1, Lmb/z2;->f:Ljava/lang/String;

    .line 24
    sget-object v1, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->allowedMethods:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    iget-object v1, p1, Lmb/v3;->h:Lmb/c1;

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {v1}, Lmb/c1;->A()Lmb/y4;

    move-result-object v1

    check-cast v1, Lmb/p0;

    .line 27
    iget-object v4, v1, Lmb/p0;->f:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 28
    sget-object v5, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->allowedMethodParents:Ljava/util/Set;

    aget-object v4, v4, v3

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 29
    iget-object p1, p1, Lmb/z2;->g:[Lmb/y4;

    array-length v4, p1

    if-nez v4, :cond_6

    .line 30
    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    iget-object p1, v1, Lmb/p0;->f:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 32
    :cond_6
    array-length v1, p1

    if-ne v1, v2, :cond_7

    .line 33
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 36
    :cond_7
    const-string p1, " is an illegal method in a value expression"

    .line 37
    invoke-static {v0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 39
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 40
    :cond_8
    instance-of v0, p1, Lmb/s4;

    if-eqz v0, :cond_9

    .line 41
    check-cast p1, Lmb/s4;

    iget-object p1, p1, Lmb/s4;->f:Lmb/y4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 44
    :cond_9
    instance-of v0, p1, Lmb/d1;

    if-eqz v0, :cond_d

    check-cast p1, Lmb/d1;

    iget-object v0, p1, Lmb/d1;->g:Ljava/lang/String;

    .line 45
    iget-object v5, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object v5, v5, Lcom/graphhopper/routing/weighting/custom/ParseResult;->operators:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_0

    .line 47
    :cond_a
    const-string p1, "invalid operation \'"

    .line 48
    invoke-static {p1, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 50
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 51
    :cond_b
    :goto_0
    iget-object v0, p1, Lmb/d1;->f:Lmb/y4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-interface {p0, v0}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p1, Lmb/d1;->h:Lmb/y4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_1

    :cond_c
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 56
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->visitRvalue(Lmb/y4;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public visitType(Lmb/s5;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic visitType(Lmb/s5;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->visitType(Lmb/s5;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
