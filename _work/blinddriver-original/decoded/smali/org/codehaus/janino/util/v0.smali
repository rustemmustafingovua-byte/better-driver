.class public abstract Lorg/codehaus/janino/util/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final abstractCompilationUnitCopier:Lmb/d7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/d7;"
        }
    .end annotation
.end field

.field private final annotationCopier:Lmb/e7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/e7;"
        }
    .end annotation
.end field

.field private final arrayInitializerOrRvalueCopier:Lmb/f7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/f7;"
        }
    .end annotation
.end field

.field private final atomCopier:Lmb/g7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/g7;"
        }
    .end annotation
.end field

.field private final blockStatementCopier:Lmb/h7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/h7;"
        }
    .end annotation
.end field

.field private final constructorInvocationCopier:Lmb/i7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/i7;"
        }
    .end annotation
.end field

.field private final elementValueCopier:Lmb/j7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/j7;"
        }
    .end annotation
.end field

.field private final fieldDeclarationOrInitializerCopier:Lmb/k7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/k7;"
        }
    .end annotation
.end field

.field private final functionDeclaratorCopier:Lmb/l7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/l7;"
        }
    .end annotation
.end field

.field private final importCopier:Lmb/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/m7;"
        }
    .end annotation
.end field

.field private final lvalueCopier:Lmb/n7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/n7;"
        }
    .end annotation
.end field

.field private final modifierCopier:Lmb/o7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/o7;"
        }
    .end annotation
.end field

.field private final resourceCopier:Lmb/q7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/q7;"
        }
    .end annotation
.end field

.field private final rvalueCopier:Lmb/p7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/p7;"
        }
    .end annotation
.end field

.field private final typeArgumentCopier:Lmb/r7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/r7;"
        }
    .end annotation
.end field

.field private final typeBodyDeclarationCopier:Lmb/s7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/s7;"
        }
    .end annotation
.end field

.field private final typeCopier:Lmb/u7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/u7;"
        }
    .end annotation
.end field

.field private final typeDeclarationCopier:Lmb/t7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/t7;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->abstractCompilationUnitCopier:Lmb/d7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->importCopier:Lmb/m7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->typeDeclarationCopier:Lmb/t7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->arrayInitializerOrRvalueCopier:Lmb/f7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->rvalueCopier:Lmb/p7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->lvalueCopier:Lmb/n7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->typeBodyDeclarationCopier:Lmb/s7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->functionDeclaratorCopier:Lmb/l7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->blockStatementCopier:Lmb/h7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->fieldDeclarationOrInitializerCopier:Lmb/k7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->typeCopier:Lmb/u7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->atomCopier:Lmb/g7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->constructorInvocationCopier:Lmb/i7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->elementValueCopier:Lmb/j7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->annotationCopier:Lmb/e7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->modifierCopier:Lmb/o7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->resourceCopier:Lmb/q7;

    new-instance v0, Lorg/codehaus/janino/util/u0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lorg/codehaus/janino/util/u0;-><init>(Lorg/codehaus/janino/util/v0;I)V

    iput-object v0, p0, Lorg/codehaus/janino/util/v0;->typeArgumentCopier:Lmb/r7;

    return-void
.end method


# virtual methods
.method public copyAbstractCompilationUnit(Lmb/k0;)Lmb/k0;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->abstractCompilationUnitCopier:Lmb/d7;

    invoke-virtual {p1, p0}, Lmb/k0;->f(Lmb/d7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/k0;

    return-object p0
.end method

.method public copyAccessModifier(Lmb/n0;)Lmb/n0;
    .locals 1

    new-instance p0, Lmb/n0;

    iget-object v0, p1, Lmb/n0;->c:Ljava/lang/String;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, p1, v0}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyAlternateConstructorInvocation(Lmb/o0;)Lmb/t1;
    .locals 2

    new-instance v0, Lmb/o0;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/t1;->c:[Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/t1;-><init>(Lhb/c;[Lmb/y4;)V

    return-object v0
.end method

.method public copyAmbiguousName(Lmb/p0;)Lmb/n3;
    .locals 2

    new-instance p0, Lmb/p0;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object v1, p1, Lmb/p0;->f:[Ljava/lang/String;

    iget p1, p1, Lmb/p0;->g:I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v1, p1

    invoke-direct {p0, v0, p1, v1}, Lmb/p0;-><init>(Lhb/c;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public copyAnnotation(Lmb/r0;)Lmb/r0;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->annotationCopier:Lmb/e7;

    invoke-interface {p1, p0}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/r0;

    return-object p0
.end method

.method public copyAnnotations([Lmb/r0;)[Lmb/r0;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lmb/r0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyAnnotation(Lmb/r0;)Lmb/r0;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public copyAnonymousClassDeclaration(Lmb/t0;)Lmb/t0;
    .locals 6

    new-instance v0, Lmb/t0;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/t0;->l:Lmb/s5;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmb/t0;-><init>(Lhb/c;Lmb/s5;)V

    iget-object v1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/l2;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->x(Lmb/s1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/t3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public copyArrayAccessExpression(Lmb/u0;)Lmb/n3;
    .locals 3

    new-instance v0, Lmb/u0;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/u0;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/u0;->g:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/u0;-><init>(Lhb/c;Lmb/y4;Lmb/y4;)V

    return-object v0
.end method

.method public copyArrayCreationReference(Lmb/v0;)Lmb/y4;
    .locals 2

    new-instance v0, Lmb/v0;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/v0;->f:Lmb/z0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayType(Lmb/z0;)Lmb/z0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/v0;-><init>(Lhb/c;Lmb/z0;)V

    return-object v0
.end method

.method public copyArrayInitializer(Lmb/w0;)Lmb/w0;
    .locals 2

    new-instance v0, Lmb/w0;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/w0;->c:[Lmb/x0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayInitializerOrRvalues([Lmb/x0;)[Lmb/x0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/w0;-><init>(Lhb/c;[Lmb/x0;)V

    return-object v0
.end method

.method public copyArrayInitializerOrRvalue(Lmb/x0;)Lmb/x0;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->arrayInitializerOrRvalueCopier:Lmb/f7;

    invoke-interface {p1, p0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/x0;

    return-object p0
.end method

.method public copyArrayInitializerOrRvalues([Lmb/x0;)[Lmb/x0;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/x0;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalArrayInitializerOrRvalue(Lmb/x0;)Lmb/x0;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyArrayLength(Lmb/y0;)Lmb/y4;
    .locals 2

    new-instance v0, Lmb/y0;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/y0;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/y0;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0
.end method

.method public copyArrayType(Lmb/z0;)Lmb/z0;
    .locals 1

    new-instance v0, Lmb/z0;

    iget-object p1, p1, Lmb/z0;->d:Lmb/s5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    invoke-direct {v0, p0}, Lmb/z0;-><init>(Lmb/s5;)V

    return-object v0
.end method

.method public copyAssertStatement(Lmb/a1;)Lmb/f1;
    .locals 3

    new-instance v0, Lmb/a1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/a1;->e:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/a1;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/a1;-><init>(Lhb/c;Lmb/y4;Lmb/y4;)V

    return-object v0
.end method

.method public copyAssignment(Lmb/b1;)Lmb/y4;
    .locals 4

    new-instance v0, Lmb/b1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/b1;->f:Lmb/n3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyLvalue(Lmb/n3;)Lmb/n3;

    move-result-object v2

    iget-object v3, p1, Lmb/b1;->g:Ljava/lang/String;

    iget-object p1, p1, Lmb/b1;->h:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/b1;-><init>(Lhb/c;Lmb/n3;Ljava/lang/String;Lmb/y4;)V

    return-object v0
.end method

.method public copyAtom(Lmb/c1;)Lmb/c1;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->atomCopier:Lmb/g7;

    invoke-virtual {p1, p0}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/c1;

    return-object p0
.end method

.method public copyBinaryOperation(Lmb/d1;)Lmb/y4;
    .locals 4

    new-instance v0, Lmb/d1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/d1;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object v3, p1, Lmb/d1;->g:Ljava/lang/String;

    iget-object p1, p1, Lmb/d1;->h:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    return-object v0
.end method

.method public copyBlock(Lmb/e1;)Lmb/e1;
    .locals 5

    new-instance v0, Lmb/e1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, v1}, Lmb/e1;-><init>(Lhb/c;)V

    iget-object p1, p1, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/f1;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v3

    iget-object v4, v0, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Lmb/f1;->a(Lmb/a5;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyBlockStatement(Lmb/f1;)Lmb/f1;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->blockStatementCopier:Lmb/h7;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/f1;

    return-object p0
.end method

.method public copyBlockStatements(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/f1;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/f1;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyBooleanLiteral(Lmb/g1;)Lmb/y4;
    .locals 1

    new-instance p0, Lmb/g1;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyBreakStatement(Lmb/i1;)Lmb/f1;
    .locals 1

    new-instance p0, Lmb/i1;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/i1;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/i1;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyCast(Lmb/k1;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/k1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/k1;->f:Lmb/s5;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v2

    iget-object p1, p1, Lmb/k1;->g:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lmb/k1;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    return-object v0
.end method

.method public copyCatchClause(Lmb/l1;)Lmb/l1;
    .locals 3

    new-instance v0, Lmb/l1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/l1;->c:Lmb/m1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyCatchParameter(Lmb/m1;)Lmb/m1;

    move-result-object v2

    iget-object p1, p1, Lmb/l1;->d:Lmb/f1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/l1;-><init>(Lhb/c;Lmb/m1;Lmb/f1;)V

    return-object v0
.end method

.method public copyCatchClauses(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/l1;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/l1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/l1;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyCatchClause(Lmb/l1;)Lmb/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyCatchParameter(Lmb/m1;)Lmb/m1;
    .locals 4

    new-instance v0, Lmb/m1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-boolean v2, p1, Lmb/m1;->c:Z

    iget-object v3, p1, Lmb/m1;->d:[Lmb/s5;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object p0

    iget-object p1, p1, Lmb/m1;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, p1}, Lmb/m1;-><init>(Lhb/c;Z[Lmb/s5;Ljava/lang/String;)V

    return-object v0
.end method

.method public copyCharacterLiteral(Lmb/n1;)Lmb/y4;
    .locals 1

    new-instance p0, Lmb/n1;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyClassInstanceCreationReference(Lmb/o1;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/o1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/o1;->f:Lmb/s5;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v2

    iget-object p1, p1, Lmb/o1;->g:[Lmb/t5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeArguments([Lmb/t5;)[Lmb/t5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/o1;-><init>(Lhb/c;Lmb/s5;[Lmb/t5;)V

    return-object v0
.end method

.method public copyClassLiteral(Lmb/p1;)Lmb/y4;
    .locals 2

    new-instance v0, Lmb/p1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/p1;->f:Lmb/s5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/p1;-><init>(Lhb/c;Lmb/s5;)V

    return-object v0
.end method

.method public copyCompilationUnit(Lmb/q1;)Lmb/q1;
    .locals 5

    new-instance v0, Lmb/q1;

    iget-object v1, p1, Lmb/k0;->a:Ljava/lang/String;

    iget-object v2, p1, Lmb/k0;->b:[Lmb/f0;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyImportDeclarations([Lmb/f0;)[Lmb/f0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmb/q1;-><init>(Ljava/lang/String;[Lmb/f0;)V

    iget-object v1, p1, Lmb/q1;->c:Lmb/k4;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyOptionalPackageDeclaration(Lmb/k4;)Lmb/k4;

    move-result-object v1

    iput-object v1, v0, Lmb/q1;->c:Lmb/k4;

    iget-object p1, p1, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/p4;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyPackageMemberTypeDeclaration(Lmb/p4;)Lmb/p4;

    move-result-object v3

    iget-object v4, v0, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Lmb/p4;->r(Lmb/q1;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyConditionalExpression(Lmb/r1;)Lmb/y4;
    .locals 4

    new-instance v0, Lmb/r1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/r1;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object v3, p1, Lmb/r1;->g:Lmb/y4;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v3

    iget-object p1, p1, Lmb/r1;->h:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/r1;-><init>(Lhb/c;Lmb/y4;Lmb/y4;Lmb/y4;)V

    return-object v0
.end method

.method public copyConstructorDeclarator(Lmb/s1;)Lmb/s1;
    .locals 7

    new-instance v0, Lmb/s1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/l0;->d:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/r2;->g:Lmb/q2;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyFormalParameters(Lmb/q2;)Lmb/q2;

    move-result-object v3

    iget-object v4, p1, Lmb/r2;->h:[Lmb/s5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v4

    iget-object v5, p1, Lmb/s1;->l:Lmb/t1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyOptionalConstructorInvocation(Lmb/t1;)Lmb/t1;

    move-result-object v5

    iget-object p1, p1, Lmb/r2;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatements(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lmb/s1;-><init>(Lhb/c;[Lmb/x3;Lmb/q2;[Lmb/s5;Lmb/t1;Ljava/util/List;)V

    return-object v0
.end method

.method public copyConstructorInvocation(Lmb/t1;)Lmb/t1;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->constructorInvocationCopier:Lmb/i7;

    invoke-virtual {p1, p0}, Lmb/t1;->E(Lmb/i7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/t1;

    return-object p0
.end method

.method public copyContinueStatement(Lmb/v1;)Lmb/f1;
    .locals 1

    new-instance p0, Lmb/v1;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/v1;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/v1;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyCrement(Lmb/w1;)Lmb/y4;
    .locals 3

    iget-boolean v0, p1, Lmb/w1;->f:Z

    iget-object v1, p1, Lmb/w1;->h:Lmb/n3;

    iget-object v2, p1, Lmb/w1;->g:Ljava/lang/String;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    if-eqz v0, :cond_0

    new-instance v0, Lmb/w1;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyLvalue(Lmb/n3;)Lmb/n3;

    move-result-object p0

    invoke-direct {v0, p1, v2, p0}, Lmb/w1;-><init>(Lhb/c;Ljava/lang/String;Lmb/n3;)V

    return-object v0

    :cond_0
    new-instance v0, Lmb/w1;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyLvalue(Lmb/n3;)Lmb/n3;

    move-result-object p0

    invoke-direct {v0, p1, p0, v2}, Lmb/w1;-><init>(Lhb/c;Lmb/n3;Ljava/lang/String;)V

    return-object v0
.end method

.method public copyDoStatement(Lmb/x1;)Lmb/f1;
    .locals 3

    new-instance v0, Lmb/x1;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v2

    iget-object p1, p1, Lmb/x1;->h:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/x1;-><init>(Lhb/c;Lmb/f1;Lmb/y4;)V

    return-object v0
.end method

.method public copyElementValue(Lmb/z1;)Lmb/z1;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->elementValueCopier:Lmb/j7;

    invoke-interface {p1, p0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/z1;

    return-object p0
.end method

.method public copyElementValueArrayInitializer(Lmb/a2;)Lmb/z1;
    .locals 2

    new-instance v0, Lmb/a2;

    iget-object v1, p1, Lmb/a2;->c:[Lmb/z1;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyElementValues([Lmb/z1;)[Lmb/z1;

    move-result-object p0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, p0, p1}, Lmb/a2;-><init>([Lmb/z1;Lhb/c;)V

    return-object v0
.end method

.method public copyElementValuePair(Lmb/b2;)Lmb/b2;
    .locals 2

    new-instance v0, Lmb/b2;

    iget-object v1, p1, Lmb/b2;->a:Ljava/lang/String;

    iget-object p1, p1, Lmb/b2;->b:Lmb/z1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyElementValue(Lmb/z1;)Lmb/z1;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/b2;-><init>(Ljava/lang/String;Lmb/z1;)V

    return-object v0
.end method

.method public copyElementValuePairs([Lmb/b2;)[Lmb/b2;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/b2;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyElementValuePair(Lmb/b2;)Lmb/b2;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyElementValues([Lmb/z1;)[Lmb/z1;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/z1;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalElementValue(Lmb/z1;)Lmb/z1;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyEmptyStatement(Lmb/c2;)Lmb/f1;
    .locals 0

    new-instance p0, Lmb/c2;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    return-object p0
.end method

.method public copyEnumConstant(Lmb/e2;)Lmb/e2;
    .locals 5

    new-instance v0, Lmb/e2;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/e2;->l:Ljava/lang/String;

    iget-object v4, p1, Lmb/e2;->m:[Lmb/y4;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmb/e2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/y4;)V

    iget-object p1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/l2;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyExpressionStatement(Lmb/h2;)Lmb/f1;
    .locals 1

    new-instance v0, Lmb/h2;

    iget-object p1, p1, Lmb/h2;->e:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, p0}, Lmb/h2;-><init>(Lmb/y4;)V

    return-object v0
.end method

.method public copyFieldAccess(Lmb/i2;)Lmb/n3;
    .locals 3

    new-instance v0, Lmb/i2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/i2;->f:Lmb/c1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyAtom(Lmb/c1;)Lmb/c1;

    move-result-object p0

    iget-object p1, p1, Lmb/i2;->g:Lmb/s;

    invoke-direct {v0, v1, p0, p1}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    return-object v0
.end method

.method public copyFieldAccessExpression(Lmb/j2;)Lmb/n3;
    .locals 3

    new-instance v0, Lmb/j2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/j2;->f:Lmb/c1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyAtom(Lmb/c1;)Lmb/c1;

    move-result-object p0

    iget-object p1, p1, Lmb/j2;->g:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lmb/j2;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    return-object v0
.end method

.method public copyFieldDeclaration(Lmb/k2;)Lmb/k2;
    .locals 4

    new-instance v0, Lmb/k2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/k2;->e:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/k2;->f:Lmb/s5;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v3

    iget-object p1, p1, Lmb/k2;->g:[Lmb/z5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyVariableDeclarators([Lmb/z5;)[Lmb/z5;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/k2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    return-object v0
.end method

.method public copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->fieldDeclarationOrInitializerCopier:Lmb/k7;

    invoke-interface {p1, p0}, Lmb/l2;->j(Lmb/k7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/l2;

    return-object p0
.end method

.method public copyFloatingPointLiteral(Lmb/m2;)Lmb/y4;
    .locals 1

    new-instance p0, Lmb/m2;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyForEachStatement(Lmb/n2;)Lmb/f1;
    .locals 4

    new-instance v0, Lmb/n2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/n2;->h:Lmb/p2;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyFormalParameter(Lmb/p2;)Lmb/p2;

    move-result-object v2

    iget-object v3, p1, Lmb/n2;->i:Lmb/y4;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v3

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/n2;-><init>(Lhb/c;Lmb/p2;Lmb/y4;Lmb/f1;)V

    return-object v0
.end method

.method public copyForStatement(Lmb/o2;)Lmb/f1;
    .locals 6

    new-instance v0, Lmb/o2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/o2;->h:Lmb/f1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v2

    iget-object v3, p1, Lmb/o2;->i:Lmb/y4;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v3

    iget-object v4, p1, Lmb/o2;->j:[Lmb/y4;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object v4

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmb/o2;-><init>(Lhb/c;Lmb/f1;Lmb/y4;[Lmb/y4;Lmb/f1;)V

    return-object v0
.end method

.method public copyFormalParameter(Lmb/p2;)Lmb/p2;
    .locals 4

    new-instance v0, Lmb/p2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/p2;->c:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    iget-object p1, p1, Lmb/p2;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, p1}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    return-object v0
.end method

.method public copyFormalParameters(Lmb/q2;)Lmb/q2;
    .locals 3

    .line 2
    new-instance v0, Lmb/q2;

    .line 3
    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    .line 4
    iget-object v2, p1, Lmb/q2;->c:[Lmb/p2;

    .line 5
    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyFormalParameters([Lmb/p2;)[Lmb/p2;

    move-result-object p0

    iget-boolean p1, p1, Lmb/q2;->d:Z

    invoke-direct {v0, v1, p0, p1}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    return-object v0
.end method

.method public copyFormalParameters([Lmb/p2;)[Lmb/p2;
    .locals 4

    .line 1
    array-length v0, p1

    new-array v1, v0, [Lmb/p2;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyFormalParameter(Lmb/p2;)Lmb/p2;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public copyFunctionDeclarator(Lmb/r2;)Lmb/r2;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->functionDeclaratorCopier:Lmb/l7;

    invoke-virtual {p1, p0}, Lmb/r2;->x(Lmb/l7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/r2;

    return-object p0
.end method

.method public copyIfStatement(Lmb/t2;)Lmb/f1;
    .locals 4

    new-instance v0, Lmb/t2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/t2;->e:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object v3, p1, Lmb/t2;->f:Lmb/f1;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v3

    iget-object p1, p1, Lmb/t2;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/t2;-><init>(Lhb/c;Lmb/y4;Lmb/f1;Lmb/f1;)V

    return-object v0
.end method

.method public copyImportDeclaration(Lmb/f0;)Lmb/f0;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->importCopier:Lmb/m7;

    invoke-virtual {p1, p0}, Lmb/f0;->x(Lmb/m7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/f0;

    return-object p0
.end method

.method public copyImportDeclarations([Lmb/f0;)[Lmb/f0;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/f0;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyImportDeclaration(Lmb/f0;)Lmb/f0;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyInitializer(Lmb/u2;)Lmb/u2;
    .locals 3

    new-instance v0, Lmb/u2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/l0;->d:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlock(Lmb/e1;)Lmb/e1;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/u2;-><init>(Lhb/c;[Lmb/x3;Lmb/e1;)V

    return-object v0
.end method

.method public copyInstanceof(Lmb/w2;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/w2;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/w2;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/w2;->g:Lmb/s5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/w2;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    return-object v0
.end method

.method public copyIntegerLiteral(Lmb/x2;)Lmb/y4;
    .locals 1

    new-instance p0, Lmb/x2;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyLabeledStatement(Lmb/a3;)Lmb/f1;
    .locals 3

    new-instance v0, Lmb/a3;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/a3;->f:Ljava/lang/String;

    iget-object p1, p1, Lmb/a3;->g:Lmb/e5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyStatement(Lmb/e5;)Lmb/e5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/a3;-><init>(Lhb/c;Ljava/lang/String;Lmb/e5;)V

    return-object v0
.end method

.method public copyLambdaExpression(Lmb/b3;)Lmb/y4;
    .locals 2

    new-instance p0, Lmb/b3;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object v1, p1, Lmb/b3;->f:Lmb/c3;

    iget-object p1, p1, Lmb/b3;->g:Lm2/j;

    invoke-direct {p0, v0, v1, p1}, Lmb/b3;-><init>(Lhb/c;Lmb/c3;Lm2/j;)V

    return-object p0
.end method

.method public copyLocalClassDeclaration(Lmb/e3;)Lmb/e3;
    .locals 7

    new-instance v0, Lmb/e3;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v4, p1, Lmb/m0;->c:[Lmb/w5;

    iget-object v5, p1, Lmb/b4;->m:Lmb/s5;

    iget-object v6, p1, Lmb/b4;->n:[Lmb/s5;

    invoke-virtual {p0, v6}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    iget-object v1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/l2;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->x(Lmb/s1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/t3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public copyLocalClassDeclarationStatement(Lmb/f3;)Lmb/f1;
    .locals 1

    new-instance v0, Lmb/f3;

    iget-object p1, p1, Lmb/f3;->e:Lmb/e3;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLocalClassDeclaration(Lmb/e3;)Lmb/e3;

    move-result-object p0

    invoke-direct {v0, p0}, Lmb/f3;-><init>(Lmb/e3;)V

    return-object v0
.end method

.method public copyLocalVariableAccess(Lmb/h3;)Lmb/n3;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public copyLocalVariableDeclarationStatement(Lmb/i3;)Lmb/f1;
    .locals 4

    new-instance v0, Lmb/i3;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/i3;->e:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/i3;->f:Lmb/s5;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v3

    iget-object p1, p1, Lmb/i3;->g:[Lmb/z5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyVariableDeclarators([Lmb/z5;)[Lmb/z5;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    return-object v0
.end method

.method public copyLocalVariableDeclaratorResource(Lmb/o5;)Lmb/p5;
    .locals 4

    new-instance v0, Lmb/o5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/o5;->c:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/o5;->d:Lmb/s5;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v3

    iget-object p1, p1, Lmb/o5;->e:Lmb/z5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyVariableDeclarator(Lmb/z5;)Lmb/z5;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/o5;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Lmb/z5;)V

    return-object v0
.end method

.method public copyLvalue(Lmb/n3;)Lmb/n3;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->lvalueCopier:Lmb/n7;

    invoke-virtual {p1, p0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/n3;

    return-object p0
.end method

.method public copyMarkerAnnotation(Lmb/o3;)Lmb/r0;
    .locals 1

    new-instance v0, Lmb/o3;

    iget-object p1, p1, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    invoke-direct {v0, p0}, Lmb/d0;-><init>(Lmb/s5;)V

    return-object v0
.end method

.method public copyMemberAnnotationTypeDeclaration(Lmb/p3;)Lmb/t3;
    .locals 11

    new-instance v0, Lmb/p3;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/y2;->i:Ljava/lang/String;

    new-instance v4, Lmb/v4;

    const/4 v6, 0x0

    new-array v5, v6, [Lmb/r0;

    const-string v7, "annotation"

    const-string v8, "Annotation"

    const-string v9, "java"

    const-string v10, "lang"

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v1, v5, v7, v8}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lmb/s5;

    aput-object v4, v5, v6

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lmb/y2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V

    iget-object v1, p1, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/k2;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyFieldDeclaration(Lmb/k2;)Lmb/k2;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmb/y2;->x(Lmb/k2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/u3;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v6, v1, :cond_2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    check-cast v2, Lmb/t3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public copyMemberClassDeclaration(Lmb/q3;)Lmb/t3;
    .locals 7

    new-instance v0, Lmb/q3;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v4, p1, Lmb/m0;->c:[Lmb/w5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object v4

    iget-object v5, p1, Lmb/b4;->m:Lmb/s5;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyOptionalType(Lmb/s5;)Lmb/s5;

    move-result-object v5

    iget-object v6, p1, Lmb/b4;->n:[Lmb/s5;

    invoke-virtual {p0, v6}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    iget-object v1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/l2;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->x(Lmb/s1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/t3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public copyMemberEnumDeclaration(Lmb/r3;)Lmb/t3;
    .locals 6

    new-instance v0, Lmb/r3;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v4, p1, Lmb/b4;->n:[Lmb/s5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmb/r3;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/s5;)V

    iget-object v1, p1, Lmb/r3;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/e2;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyEnumConstant(Lmb/e2;)Lmb/e2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/r3;->d(Lmb/e2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->x(Lmb/s1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/t3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/l2;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_4

    :cond_4
    return-object v0
.end method

.method public copyMemberInterfaceDeclaration(Lmb/s3;)Lmb/t3;
    .locals 6

    new-instance v0, Lmb/s3;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/y2;->i:Ljava/lang/String;

    iget-object v4, p1, Lmb/m0;->c:[Lmb/w5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object v4

    iget-object v5, p1, Lmb/y2;->j:[Lmb/s5;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmb/y2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V

    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/t3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyTypeDeclaration(Lmb/v5;)Lmb/v5;

    move-result-object p0

    check-cast p0, Lmb/t3;

    return-object p0
.end method

.method public abstract copyMethodDeclarator(Lmb/u3;)Lmb/u3;
.end method

.method public copyMethodInvocation(Lmb/v3;)Lmb/y4;
    .locals 4

    new-instance v0, Lmb/v3;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/v3;->h:Lmb/c1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalAtom(Lmb/c1;)Lmb/c1;

    move-result-object v2

    iget-object v3, p1, Lmb/z2;->f:Ljava/lang/String;

    iget-object p1, p1, Lmb/z2;->g:[Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    return-object v0
.end method

.method public copyMethodReference(Lmb/w3;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/w3;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/w3;->f:Lmb/c1;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyAtom(Lmb/c1;)Lmb/c1;

    move-result-object p0

    iget-object p1, p1, Lmb/w3;->g:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lmb/w3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    return-object v0
.end method

.method public copyModifier(Lmb/x3;)Lmb/x3;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->modifierCopier:Lmb/o7;

    invoke-interface {p1, p0}, Lmb/x3;->l(Lmb/o7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/x3;

    return-object p0
.end method

.method public copyModifiers([Lmb/x3;)[Lmb/x3;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/x3;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifier(Lmb/x3;)Lmb/x3;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyModularCompilationUnit(Lmb/y3;)Lmb/y3;
    .locals 3

    new-instance v0, Lmb/y3;

    iget-object v1, p1, Lmb/k0;->a:Ljava/lang/String;

    iget-object v2, p1, Lmb/k0;->b:[Lmb/f0;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyImportDeclarations([Lmb/f0;)[Lmb/f0;

    move-result-object p0

    iget-object p1, p1, Lmb/y3;->c:Lmb/z3;

    invoke-direct {v0, v1, p0, p1}, Lmb/y3;-><init>(Ljava/lang/String;[Lmb/f0;Lmb/z3;)V

    return-object v0
.end method

.method public copyNewAnonymousClassInstance(Lmb/d4;)Lmb/y4;
    .locals 4

    new-instance v0, Lmb/d4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/d4;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object v3, p1, Lmb/d4;->g:Lmb/t0;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyAnonymousClassDeclaration(Lmb/t0;)Lmb/t0;

    move-result-object v3

    iget-object p1, p1, Lmb/d4;->h:[Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/d4;-><init>(Lhb/c;Lmb/y4;Lmb/t0;[Lmb/y4;)V

    return-object v0
.end method

.method public copyNewArray(Lmb/e4;)Lmb/y4;
    .locals 4

    new-instance v0, Lmb/e4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/e4;->f:Lmb/s5;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v2

    iget-object v3, p1, Lmb/e4;->g:[Lmb/y4;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    iget p1, p1, Lmb/e4;->h:I

    invoke-direct {v0, v1, v2, p0, p1}, Lmb/e4;-><init>(Lhb/c;Lmb/s5;[Lmb/y4;I)V

    return-object v0
.end method

.method public copyNewClassInstance(Lmb/f4;)Lmb/y4;
    .locals 4

    iget-object v0, p1, Lmb/f4;->g:Lmb/s5;

    iget-object v1, p1, Lmb/f4;->h:[Lmb/y4;

    iget-object v2, p1, Lmb/f4;->f:Lmb/y4;

    iget-object v3, p1, Lmb/m3;->a:Lhb/c;

    if-eqz v0, :cond_0

    new-instance v0, Lmb/f4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/f4;->g:Lmb/s5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p1

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v3, v2, p1, p0}, Lmb/f4;-><init>(Lhb/c;Lmb/y4;Lmb/s5;[Lmb/y4;)V

    return-object v0

    :cond_0
    new-instance v0, Lmb/f4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/f4;->i:Lmb/b0;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v3, v2, p1, p0}, Lmb/f4;-><init>(Lhb/c;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    return-object v0
.end method

.method public copyNewInitializedArray(Lmb/g4;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/g4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/g4;->f:Lmb/z0;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalArrayType(Lmb/z0;)Lmb/z0;

    move-result-object v2

    iget-object p1, p1, Lmb/g4;->g:Lmb/w0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayInitializer(Lmb/w0;)Lmb/w0;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/g4;-><init>(Lhb/c;Lmb/z0;Lmb/w0;)V

    return-object v0
.end method

.method public copyNormalAnnotation(Lmb/h4;)Lmb/r0;
    .locals 2

    new-instance v0, Lmb/h4;

    iget-object v1, p1, Lmb/d0;->a:Lmb/s5;

    check-cast v1, Lmb/v4;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object v1

    iget-object p1, p1, Lmb/h4;->b:[Lmb/b2;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyElementValuePairs([Lmb/b2;)[Lmb/b2;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/h4;-><init>(Lmb/v4;[Lmb/b2;)V

    return-object v0
.end method

.method public copyNullLiteral(Lmb/i4;)Lmb/y4;
    .locals 0

    new-instance p0, Lmb/i4;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, p1}, Lmb/i4;-><init>(Lhb/c;)V

    return-object p0
.end method

.method public copyOptionalArrayInitializer(Lmb/w0;)Lmb/w0;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayInitializer(Lmb/w0;)Lmb/w0;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalArrayInitializerOrRvalue(Lmb/x0;)Lmb/x0;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayInitializerOrRvalue(Lmb/x0;)Lmb/x0;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalArrayType(Lmb/z0;)Lmb/z0;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayType(Lmb/z0;)Lmb/z0;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalAtom(Lmb/c1;)Lmb/c1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAtom(Lmb/c1;)Lmb/c1;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalBlock(Lmb/e1;)Lmb/e1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlock(Lmb/e1;)Lmb/e1;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalBlockStatement(Lmb/f1;)Lmb/f1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalConstructorInvocation(Lmb/t1;)Lmb/t1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyConstructorInvocation(Lmb/t1;)Lmb/t1;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalElementValue(Lmb/z1;)Lmb/z1;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyElementValue(Lmb/z1;)Lmb/z1;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalPackageDeclaration(Lmb/k4;)Lmb/k4;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPackageDeclaration(Lmb/k4;)Lmb/k4;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalReferenceType(Lmb/v4;)Lmb/v4;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalReferenceTypes([Lmb/v4;)[Lmb/v4;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyReferenceTypes([Lmb/v4;)[Lmb/v4;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalRvalue(Lmb/y4;)Lmb/y4;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalRvalues([Lmb/y4;)[Lmb/y4;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalStatements(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/f1;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyStatements(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalType(Lmb/s5;)Lmb/s5;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalTypeArguments([Lmb/t5;)[Lmb/t5;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyTypeArguments([Lmb/t5;)[Lmb/t5;

    move-result-object p0

    return-object p0
.end method

.method public copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object p0

    return-object p0
.end method

.method public copyPackage(Lmb/j4;)Lmb/c1;
    .locals 1

    new-instance p0, Lmb/j4;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/j4;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/j4;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyPackageDeclaration(Lmb/k4;)Lmb/k4;
    .locals 1

    new-instance p0, Lmb/k4;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/k4;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/k4;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copyPackageMemberAnnotationTypeDeclaration(Lmb/l4;)Lmb/v5;
    .locals 4

    new-instance v0, Lmb/l4;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/y2;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lmb/l4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;)V

    iget-object p1, p1, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/k2;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyFieldDeclaration(Lmb/k2;)Lmb/k2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/y2;->x(Lmb/k2;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyPackageMemberClassDeclaration(Lmb/m4;)Lmb/v5;
    .locals 7

    new-instance v0, Lmb/m4;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v4, p1, Lmb/m0;->c:[Lmb/w5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object v4

    iget-object v5, p1, Lmb/b4;->m:Lmb/s5;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyOptionalType(Lmb/s5;)Lmb/s5;

    move-result-object v5

    iget-object v6, p1, Lmb/b4;->n:[Lmb/s5;

    invoke-virtual {p0, v6}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    iget-object v1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/l2;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->x(Lmb/s1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/t3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public copyPackageMemberEnumDeclaration(Lmb/n4;)Lmb/v5;
    .locals 6

    new-instance v0, Lmb/n4;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v4, p1, Lmb/b4;->n:[Lmb/s5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmb/n4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/s5;)V

    iget-object v1, p1, Lmb/n4;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/e2;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyEnumConstant(Lmb/e2;)Lmb/e2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/n4;->d(Lmb/e2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/e0;->x(Lmb/s1;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/t3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/l2;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyFieldDeclarationOrInitializer(Lmb/l2;)Lmb/l2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_4

    :cond_4
    return-object v0
.end method

.method public copyPackageMemberInterfaceDeclaration(Lmb/o4;)Lmb/v5;
    .locals 6

    new-instance v0, Lmb/o4;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v2, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/y2;->i:Ljava/lang/String;

    iget-object v4, p1, Lmb/m0;->c:[Lmb/w5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object v4

    iget-object v5, p1, Lmb/y2;->j:[Lmb/s5;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmb/y2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V

    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/u3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->k(Lmb/u3;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/t3;

    invoke-virtual {p0, v5}, Lorg/codehaus/janino/util/v0;->copyMemberTypeDeclaration(Lmb/t3;)Lmb/t3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/k2;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyFieldDeclaration(Lmb/k2;)Lmb/k2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/y2;->x(Lmb/k2;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public copyPackageMemberTypeDeclaration(Lmb/p4;)Lmb/p4;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyTypeDeclaration(Lmb/v5;)Lmb/v5;

    move-result-object p0

    check-cast p0, Lmb/p4;

    return-object p0
.end method

.method public copyParameterAccess(Lmb/r4;)Lmb/y4;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public copyParenthesizedExpression(Lmb/s4;)Lmb/n3;
    .locals 2

    new-instance v0, Lmb/s4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/s4;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/s4;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0
.end method

.method public copyPrimitiveType(Lmb/t4;)Lmb/s5;
    .locals 1

    new-instance p0, Lmb/t4;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget p1, p1, Lmb/t4;->d:I

    invoke-direct {p0, v0, p1}, Lmb/t4;-><init>(Lhb/c;I)V

    return-object p0
.end method

.method public copyQualifiedThisReference(Lmb/u4;)Lmb/y4;
    .locals 2

    new-instance v0, Lmb/u4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/u4;->f:Lmb/s5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    return-object v0
.end method

.method public copyReferenceType(Lmb/v4;)Lmb/v4;
    .locals 4

    new-instance v0, Lmb/v4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/v4;->d:[Lmb/r0;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyAnnotations([Lmb/r0;)[Lmb/r0;

    move-result-object v2

    iget-object v3, p1, Lmb/v4;->e:[Ljava/lang/String;

    iget-object p1, p1, Lmb/v4;->f:[Lmb/t5;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeArguments([Lmb/t5;)[Lmb/t5;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    return-object v0
.end method

.method public copyReferenceTypes([Lmb/v4;)[Lmb/v4;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/v4;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyResource(Lmb/p5;)Lmb/p5;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->resourceCopier:Lmb/q7;

    invoke-virtual {p1, p0}, Lmb/p5;->x(Lmb/q7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/p5;

    return-object p0
.end method

.method public copyResources(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/p5;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/p5;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/p5;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyResource(Lmb/p5;)Lmb/p5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyReturnStatement(Lmb/w4;)Lmb/f1;
    .locals 2

    new-instance v0, Lmb/w4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/w4;->e:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/w4;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0
.end method

.method public copyRvalue(Lmb/y4;)Lmb/y4;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->rvalueCopier:Lmb/p7;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/y4;

    return-object p0
.end method

.method public copyRvalueMemberType(Lmb/z4;)Lmb/s5;
    .locals 3

    new-instance v0, Lmb/z4;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/z4;->d:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    iget-object p1, p1, Lmb/z4;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lmb/z4;-><init>(Lhb/c;Ljava/lang/String;Lmb/y4;)V

    return-object v0
.end method

.method public copyRvalues(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/y4;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/y4;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/y4;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyRvalues([Lmb/y4;)[Lmb/y4;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Lmb/y4;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/y4;

    return-object p0
.end method

.method public copySimpleLiteral(Lmb/b5;)Lmb/y4;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public copySimpleType(Lmb/c5;)Lmb/s5;
    .locals 1

    new-instance p0, Lmb/c5;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/c5;->d:Lmb/b0;

    invoke-direct {p0, v0, p1}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0
.end method

.method public copySingleElementAnnotation(Lmb/d5;)Lmb/r0;
    .locals 2

    new-instance v0, Lmb/d5;

    iget-object v1, p1, Lmb/d0;->a:Lmb/s5;

    check-cast v1, Lmb/v4;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object v1

    iget-object p1, p1, Lmb/d5;->b:Lmb/z1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyElementValue(Lmb/z1;)Lmb/z1;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/d5;-><init>(Lmb/v4;Lmb/z1;)V

    return-object v0
.end method

.method public copySingleStaticImportDeclaration(Lmb/g0;)Lmb/f0;
    .locals 1

    new-instance p0, Lmb/g0;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/g0;->c:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/g0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object p0
.end method

.method public copySingleTypeImportDeclaration(Lmb/h0;)Lmb/f0;
    .locals 1

    new-instance p0, Lmb/h0;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/h0;->c:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/h0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object p0
.end method

.method public copyStatement(Lmb/e5;)Lmb/e5;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    check-cast p0, Lmb/e5;

    return-object p0
.end method

.method public copyStatements(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/f1;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/f1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/f1;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyStaticImportOnDemandDeclaration(Lmb/i0;)Lmb/f0;
    .locals 1

    new-instance p0, Lmb/i0;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/i0;->c:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/i0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object p0
.end method

.method public copyStringLiteral(Lmb/f5;)Lmb/y4;
    .locals 1

    new-instance p0, Lmb/f5;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public copySuperConstructorInvocation(Lmb/g5;)Lmb/t1;
    .locals 3

    new-instance v0, Lmb/g5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/g5;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/t1;->c:[Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/g5;-><init>(Lhb/c;Lmb/y4;[Lmb/y4;)V

    return-object v0
.end method

.method public copySuperclassFieldAccessExpression(Lmb/h5;)Lmb/n3;
    .locals 3

    new-instance v0, Lmb/h5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/h5;->f:Lmb/s5;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyOptionalType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    iget-object p1, p1, Lmb/h5;->g:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lmb/h5;-><init>(Lhb/c;Lmb/s5;Ljava/lang/String;)V

    return-object v0
.end method

.method public copySuperclassMethodInvocation(Lmb/i5;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/i5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/z2;->f:Ljava/lang/String;

    iget-object p1, p1, Lmb/z2;->g:[Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalues([Lmb/y4;)[Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/z2;-><init>(Lhb/c;Ljava/lang/String;[Lmb/y4;)V

    return-object v0
.end method

.method public copySwitchBlockStatementGroup(Lmb/j5;)Lmb/j5;
    .locals 4

    new-instance v0, Lmb/j5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/j5;->c:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalues(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p1, Lmb/j5;->d:Z

    iget-object p1, p1, Lmb/j5;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatements(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/j5;-><init>(Lhb/c;Ljava/util/List;ZLjava/util/List;)V

    return-object v0
.end method

.method public copySwitchBlockStatementGroups(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb/j5;",
            ">;)",
            "Ljava/util/List<",
            "Lmb/j5;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/j5;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/v0;->copySwitchBlockStatementGroup(Lmb/j5;)Lmb/j5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copySwitchStatement(Lmb/k5;)Lmb/f1;
    .locals 3

    new-instance v0, Lmb/k5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/k5;->f:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/k5;->g:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySwitchBlockStatementGroups(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/k5;-><init>(Lhb/c;Lmb/y4;Ljava/util/List;)V

    return-object v0
.end method

.method public copySynchronizedStatement(Lmb/l5;)Lmb/f1;
    .locals 3

    new-instance v0, Lmb/l5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/l5;->e:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/l5;->f:Lmb/f1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lmb/l5;-><init>(Lhb/c;Lmb/f1;Lmb/y4;)V

    return-object v0
.end method

.method public copyThisReference(Lmb/m5;)Lmb/y4;
    .locals 0

    new-instance p0, Lmb/m5;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    return-object p0
.end method

.method public copyThrowStatement(Lmb/n5;)Lmb/f1;
    .locals 2

    new-instance v0, Lmb/n5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/n5;->e:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/n5;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0
.end method

.method public copyTryStatement(Lmb/r5;)Lmb/f1;
    .locals 6

    new-instance v0, Lmb/r5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/r5;->e:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyResources(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lmb/r5;->f:Lmb/f1;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object v3

    iget-object v4, p1, Lmb/r5;->g:Ljava/util/List;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyCatchClauses(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    iget-object p1, p1, Lmb/r5;->h:Lmb/e1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalBlock(Lmb/e1;)Lmb/e1;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmb/r5;-><init>(Lhb/c;Ljava/util/List;Lmb/f1;Ljava/util/List;Lmb/e1;)V

    return-object v0
.end method

.method public copyType(Lmb/s5;)Lmb/s5;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->typeCopier:Lmb/u7;

    invoke-virtual {p1, p0}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/s5;

    return-object p0
.end method

.method public copyTypeArgument(Lmb/t5;)Lmb/t5;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->typeArgumentCopier:Lmb/r7;

    invoke-interface {p1, p0}, Lmb/t5;->w(Lmb/r7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/t5;

    return-object p0
.end method

.method public copyTypeArguments([Lmb/t5;)[Lmb/t5;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/t5;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyTypeArgument(Lmb/t5;)Lmb/t5;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyTypeBodyDeclaration(Lmb/u5;)Lmb/u5;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->typeBodyDeclarationCopier:Lmb/s7;

    invoke-interface {p1, p0}, Lmb/u5;->v(Lmb/s7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/u5;

    return-object p0
.end method

.method public copyTypeDeclaration(Lmb/v5;)Lmb/v5;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/v0;->typeDeclarationCopier:Lmb/t7;

    invoke-interface {p1, p0}, Lmb/v5;->q(Lmb/t7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/v5;

    return-object p0
.end method

.method public copyTypeImportOnDemandDeclaration(Lmb/j0;)Lmb/f0;
    .locals 1

    new-instance p0, Lmb/j0;

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/j0;->c:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmb/j0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object p0
.end method

.method public copyTypeParameter(Lmb/w5;)Lmb/w5;
    .locals 2

    new-instance v0, Lmb/w5;

    iget-object v1, p1, Lmb/w5;->a:Ljava/lang/String;

    iget-object p1, p1, Lmb/w5;->b:[Lmb/v4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalReferenceTypes([Lmb/v4;)[Lmb/v4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/w5;-><init>(Ljava/lang/String;[Lmb/v4;)V

    return-object v0
.end method

.method public copyTypeParameters([Lmb/w5;)[Lmb/w5;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/w5;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyTypeParameter(Lmb/w5;)Lmb/w5;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyTypes([Lmb/s5;)[Lmb/s5;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/s5;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyUnaryOperation(Lmb/x5;)Lmb/y4;
    .locals 3

    new-instance v0, Lmb/x5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/x5;->f:Ljava/lang/String;

    iget-object p1, p1, Lmb/x5;->g:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lmb/x5;-><init>(Lhb/c;Ljava/lang/String;Lmb/y4;)V

    return-object v0
.end method

.method public copyVariableAccessResource(Lmb/q5;)Lmb/p5;
    .locals 2

    new-instance v0, Lmb/q5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p1, p1, Lmb/q5;->c:Lmb/y4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/q5;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0
.end method

.method public copyVariableDeclarator(Lmb/z5;)Lmb/z5;
    .locals 4

    new-instance v0, Lmb/z5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/z5;->c:Ljava/lang/String;

    iget v3, p1, Lmb/z5;->d:I

    iget-object p1, p1, Lmb/z5;->e:Lmb/x0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalArrayInitializerOrRvalue(Lmb/x0;)Lmb/x0;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    return-object v0
.end method

.method public copyVariableDeclarators([Lmb/z5;)[Lmb/z5;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/z5;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyVariableDeclarator(Lmb/z5;)Lmb/z5;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyWhileStatement(Lmb/a6;)Lmb/f1;
    .locals 3

    new-instance v0, Lmb/a6;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/a6;->h:Lmb/y4;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object v2

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlockStatement(Lmb/f1;)Lmb/f1;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lmb/a6;-><init>(Lhb/c;Lmb/f1;Lmb/y4;)V

    return-object v0
.end method

.method public copyWildcard(Lmb/b6;)Lmb/t5;
    .locals 2

    new-instance v0, Lmb/b6;

    iget v1, p1, Lmb/b6;->a:I

    iget-object p1, p1, Lmb/b6;->b:Lmb/v4;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/b6;-><init>(ILmb/v4;)V

    return-object v0
.end method
