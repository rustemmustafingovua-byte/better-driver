.class Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/g7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmb/g7;"
    }
.end annotation


# static fields
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
.field private final classHelper:Lcom/graphhopper/routing/weighting/custom/ClassHelper;

.field private invalidMessage:Ljava/lang/String;

.field private final replacements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

.field private final variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "Math"

    const-string v2, "country"

    const-string v3, "edge"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->allowedMethodParents:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v6, "abs"

    const-string v7, "isRightHandTraffic"

    const-string v1, "ordinal"

    const-string v2, "getDistance"

    const-string v3, "getName"

    const-string v4, "contains"

    const-string v5, "sqrt"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->allowedMethods:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/weighting/custom/ParseResult;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->replacements:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;

    iput-object p3, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->classHelper:Lcom/graphhopper/routing/weighting/custom/ClassHelper;

    return-void
.end method

.method public static parse(Ljava/lang/String;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)Lcom/graphhopper/routing/weighting/custom/ParseResult;
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

    move-result-object v2

    iget-object v1, v1, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v1}, Lg5/i;->z()Lmb/q6;

    move-result-object v1

    iget v1, v1, Lmb/q6;->d:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    new-instance v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;

    invoke-direct {v1, v0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;-><init>(Lcom/graphhopper/routing/weighting/custom/ParseResult;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)V

    invoke-virtual {v2, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->ok:Z

    iget-object p2, v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->invalidMessage:Ljava/lang/String;

    iput-object p2, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->invalidMessage:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->converted:Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->replacements:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;

    iget-object v2, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->converted:Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->start:I

    invoke-virtual {v2, p0, p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->newString:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->start:I

    iget v1, v1, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;->oldLength:I

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->converted:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public isValidIdentifier(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/custom/NameValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

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
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->visitConstructorInvocation(Lmb/t1;)Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->visitPackage(Lmb/j4;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Boolean;
    .locals 11

    .line 2
    instance-of v0, p1, Lmb/p0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lmb/p0;

    .line 4
    iget-object v3, v0, Lmb/p0;->f:[Ljava/lang/String;

    array-length v4, v3

    if-ne v4, v1, :cond_2

    .line 5
    aget-object v0, v3, v2

    .line 6
    const-string v2, "in_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    .line 8
    iget p1, p1, Lhb/c;->n:I

    sub-int/2addr p1, v1

    .line 9
    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->replacements:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 10
    const-string v5, "CustomWeightingHelper.in(this."

    const-string v6, ", edge)"

    .line 11
    invoke-static {v5, v0, v6}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-direct {v3, p1, v4, v5}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;-><init>(IILjava/lang/String;)V

    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->isValidIdentifier(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 17
    :cond_1
    const-string p1, "\'"

    const-string v1, "\' not available"

    .line 18
    invoke-static {p1, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 20
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 21
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "identifier "

    const-string v1, " invalid"

    .line 22
    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 24
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 25
    :cond_3
    instance-of v0, p1, Lmb/d3;

    if-eqz v0, :cond_4

    .line 26
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 27
    :cond_4
    instance-of v0, p1, Lmb/x5;

    if-eqz v0, :cond_7

    .line 28
    check-cast p1, Lmb/x5;

    iget-object v0, p1, Lmb/x5;->g:Lmb/y4;

    iget-object p1, p1, Lmb/x5;->f:Ljava/lang/String;

    .line 29
    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-interface {p0, v0}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 32
    :cond_5
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-interface {p0, v0}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 35
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 36
    :cond_7
    instance-of v0, p1, Lmb/v3;

    if-eqz v0, :cond_b

    .line 37
    check-cast p1, Lmb/v3;

    iget-object v0, p1, Lmb/z2;->g:[Lmb/y4;

    iget-object v3, p1, Lmb/z2;->f:Ljava/lang/String;

    .line 38
    sget-object v4, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->allowedMethods:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object p1, p1, Lmb/v3;->h:Lmb/c1;

    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {p1}, Lmb/c1;->A()Lmb/y4;

    move-result-object p1

    check-cast p1, Lmb/p0;

    .line 40
    iget-object p1, p1, Lmb/p0;->f:[Ljava/lang/String;

    array-length v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 41
    sget-object v4, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->allowedMethodParents:Ljava/util/Set;

    aget-object v5, p1, v2

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 42
    array-length v4, v0

    if-nez v4, :cond_8

    .line 43
    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    aget-object p1, p1, v2

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 45
    :cond_8
    array-length p1, v0

    if-ne p1, v1, :cond_a

    .line 46
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 49
    :cond_9
    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;

    aget-object v4, p1, v2

    invoke-interface {v1, v4}, Lcom/graphhopper/routing/weighting/custom/NameValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 50
    array-length v0, v0

    if-nez v0, :cond_a

    .line 51
    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->result:Lcom/graphhopper/routing/weighting/custom/ParseResult;

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/ParseResult;->guessedVariables:Ljava/util/Set;

    aget-object p1, p1, v2

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 53
    :cond_a
    const-string p1, " is an illegal method in a conditional expression"

    .line 54
    invoke-static {v3, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->invalidMessage:Ljava/lang/String;

    .line 56
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 57
    :cond_b
    instance-of v0, p1, Lmb/s4;

    if-eqz v0, :cond_c

    .line 58
    check-cast p1, Lmb/s4;

    iget-object p1, p1, Lmb/s4;->f:Lmb/y4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 61
    :cond_c
    instance-of v0, p1, Lmb/d1;

    if-eqz v0, :cond_12

    .line 62
    check-cast p1, Lmb/d1;

    iget-object v0, p1, Lmb/d1;->g:Ljava/lang/String;

    iget-object v3, p1, Lmb/d1;->f:Lmb/y4;

    iget-object p1, p1, Lmb/d1;->h:Lmb/y4;

    .line 63
    iget-object v4, p1, Lmb/m3;->a:Lhb/c;

    .line 64
    iget v4, v4, Lhb/c;->n:I

    sub-int/2addr v4, v1

    .line 65
    instance-of v5, v3, Lmb/p0;

    if-eqz v5, :cond_10

    move-object v5, v3

    check-cast v5, Lmb/p0;

    iget-object v5, v5, Lmb/p0;->f:[Ljava/lang/String;

    array-length v6, v5

    if-ne v6, v1, :cond_10

    .line 66
    aget-object v5, v5, v2

    .line 67
    const-string v6, "=="

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "!="

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_0

    :cond_d
    move v6, v2

    goto :goto_1

    :cond_e
    :goto_0
    move v6, v1

    .line 68
    :goto_1
    instance-of v7, p1, Lmb/p0;

    if-eqz v7, :cond_10

    move-object v7, p1

    check-cast v7, Lmb/p0;

    iget-object v7, v7, Lmb/p0;->f:[Ljava/lang/String;

    array-length v8, v7

    if-ne v8, v1, :cond_10

    .line 69
    aget-object v7, v7, v2

    .line 70
    iget-object v8, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->variableValidator:Lcom/graphhopper/routing/weighting/custom/NameValidator;

    invoke-interface {v8, v5}, Lcom/graphhopper/routing/weighting/custom/NameValidator;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v7}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v6, :cond_f

    .line 71
    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->classHelper:Lcom/graphhopper/routing/weighting/custom/ClassHelper;

    invoke-virtual {v3}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/graphhopper/routing/weighting/custom/ClassHelper;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v5, p0, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->replacements:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "."

    .line 73
    invoke-static {v0, v10, v7}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-direct {v8, v4, v9, v0}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor$Replacement;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Operator "

    const-string v1, " not allowed for enum"

    .line 76
    invoke-static {p1, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_10
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-interface {p0, v3}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    invoke-interface {p0, p1}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_3

    :cond_11
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 83
    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->visitRvalue(Lmb/y4;)Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/weighting/custom/ConditionalExpressionVisitor;->visitType(Lmb/s5;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
