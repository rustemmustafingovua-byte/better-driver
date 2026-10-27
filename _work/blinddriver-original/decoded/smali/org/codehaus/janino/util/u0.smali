.class public final Lorg/codehaus/janino/util/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/k7;
.implements Lmb/u7;
.implements Lmb/g7;
.implements Lmb/i7;
.implements Lmb/j7;
.implements Lmb/e7;
.implements Lmb/o7;
.implements Lmb/q7;
.implements Lmb/r7;
.implements Lmb/d7;
.implements Lmb/m7;
.implements Lmb/t7;
.implements Lmb/f7;
.implements Lmb/p7;
.implements Lmb/n7;
.implements Lmb/s7;
.implements Lmb/l7;
.implements Lmb/h7;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lorg/codehaus/janino/util/v0;


# direct methods
.method public synthetic constructor <init>(Lorg/codehaus/janino/util/v0;I)V
    .locals 0

    iput p2, p0, Lorg/codehaus/janino/util/u0;->l:I

    iput-object p1, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lmb/r2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFunctionDeclarator(Lmb/r2;)Lmb/r2;

    move-result-object p0

    return-object p0
.end method

.method public A0(Lmb/p0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAmbiguousName(Lmb/p0;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public B(Lmb/w2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyInstanceof(Lmb/w2;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public B0(Lmb/x5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyUnaryOperation(Lmb/x5;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public C(Lmb/u4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyQualifiedThisReference(Lmb/u4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public C0(Lmb/s1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyConstructorDeclarator(Lmb/s1;)Lmb/s1;

    move-result-object p0

    return-object p0
.end method

.method public D(Lmb/r1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyConditionalExpression(Lmb/r1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public D0(Lmb/e3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLocalClassDeclaration(Lmb/e3;)Lmb/e3;

    move-result-object p0

    return-object p0
.end method

.method public E(Lmb/i3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLocalVariableDeclarationStatement(Lmb/i3;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public E0(Lmb/w1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyCrement(Lmb/w1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public F(Lmb/a6;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyWhileStatement(Lmb/a6;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public F0(Lmb/i2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFieldAccess(Lmb/i2;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public G(Lmb/d0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAnnotation(Lmb/r0;)Lmb/r0;

    move-result-object p0

    return-object p0
.end method

.method public G0(Lmb/n1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyCharacterLiteral(Lmb/n1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public H(Lmb/m2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFloatingPointLiteral(Lmb/m2;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public H0(Lmb/l4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPackageMemberAnnotationTypeDeclaration(Lmb/l4;)Lmb/v5;

    move-result-object p0

    return-object p0
.end method

.method public I(Lmb/t4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPrimitiveType(Lmb/t4;)Lmb/s5;

    move-result-object p0

    return-object p0
.end method

.method public I0(Lmb/v3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMethodInvocation(Lmb/v3;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public J(Lmb/w0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayInitializer(Lmb/w0;)Lmb/w0;

    move-result-object p0

    return-object p0
.end method

.method public J0(Lmb/b3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLambdaExpression(Lmb/b3;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public K(Lmb/d5;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySingleElementAnnotation(Lmb/d5;)Lmb/r0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySingleElementAnnotation(Lmb/d5;)Lmb/r0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public K0(Lmb/h0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySingleTypeImportDeclaration(Lmb/h0;)Lmb/f0;

    move-result-object p0

    return-object p0
.end method

.method public L(Lmb/q1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyCompilationUnit(Lmb/q1;)Lmb/q1;

    move-result-object p0

    return-object p0
.end method

.method public L0(Lmb/u3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMethodDeclarator(Lmb/u3;)Lmb/u3;

    move-result-object p0

    return-object p0
.end method

.method public M(Lmb/d1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBinaryOperation(Lmb/d1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public M0(Lmb/l5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySynchronizedStatement(Lmb/l5;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public N(Lmb/f4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNewClassInstance(Lmb/f4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public N0(Lmb/x2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyIntegerLiteral(Lmb/x2;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public O(Lmb/n2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyForEachStatement(Lmb/n2;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public O0(Lmb/i5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySuperclassMethodInvocation(Lmb/i5;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public P(Lmb/e1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBlock(Lmb/e1;)Lmb/e1;

    move-result-object p0

    return-object p0
.end method

.method public P0(Lmb/z4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalueMemberType(Lmb/z4;)Lmb/s5;

    move-result-object p0

    return-object p0
.end method

.method public Q(Lmb/t2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyIfStatement(Lmb/t2;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public R(Lmb/g4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNewInitializedArray(Lmb/g4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public S(Lmb/v0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayCreationReference(Lmb/v0;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public T(Lmb/v1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyContinueStatement(Lmb/v1;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public U(Lmb/i1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBreakStatement(Lmb/i1;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public V(Lmb/q5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyVariableAccessResource(Lmb/q5;)Lmb/p5;

    move-result-object p0

    return-object p0
.end method

.method public W(Lmb/z0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayType(Lmb/z0;)Lmb/z0;

    move-result-object p0

    return-object p0
.end method

.method public X(Lmb/a1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAssertStatement(Lmb/a1;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public Y(Lmb/n3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLvalue(Lmb/n3;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public Z(Lmb/r5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyTryStatement(Lmb/r5;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public a(Lmb/r3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberEnumDeclaration(Lmb/r3;)Lmb/t3;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberEnumDeclaration(Lmb/r3;)Lmb/t3;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public a0(Lmb/c2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyEmptyStatement(Lmb/c2;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public b(Lmb/p3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberAnnotationTypeDeclaration(Lmb/p3;)Lmb/t3;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberAnnotationTypeDeclaration(Lmb/p3;)Lmb/t3;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public b0(Lmb/j0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyTypeImportOnDemandDeclaration(Lmb/j0;)Lmb/f0;

    move-result-object p0

    return-object p0
.end method

.method public c(Lmb/g5;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySuperConstructorInvocation(Lmb/g5;)Lmb/t1;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySuperConstructorInvocation(Lmb/g5;)Lmb/t1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public c0(Lmb/d4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNewAnonymousClassInstance(Lmb/d4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public d(Lmb/k2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    sparse-switch v0, :sswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFieldDeclaration(Lmb/k2;)Lmb/k2;

    move-result-object p0

    return-object p0

    :sswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFieldDeclaration(Lmb/k2;)Lmb/k2;

    move-result-object p0

    return-object p0

    :sswitch_1
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFieldDeclaration(Lmb/k2;)Lmb/k2;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public d0(Lmb/m4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPackageMemberClassDeclaration(Lmb/m4;)Lmb/v5;

    move-result-object p0

    return-object p0
.end method

.method public e(Lmb/q3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberClassDeclaration(Lmb/q3;)Lmb/t3;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberClassDeclaration(Lmb/q3;)Lmb/t3;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public e0(Lmb/o3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMarkerAnnotation(Lmb/o3;)Lmb/r0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMarkerAnnotation(Lmb/o3;)Lmb/r0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lmb/s3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberInterfaceDeclaration(Lmb/s3;)Lmb/t3;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMemberInterfaceDeclaration(Lmb/s3;)Lmb/t3;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public f0(Lmb/y0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayLength(Lmb/y0;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public g(Lmb/o0;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAlternateConstructorInvocation(Lmb/o0;)Lmb/t1;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAlternateConstructorInvocation(Lmb/o0;)Lmb/t1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public g0(Lmb/w4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyReturnStatement(Lmb/w4;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public h(Lmb/u2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    sparse-switch v0, :sswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyInitializer(Lmb/u2;)Lmb/u2;

    move-result-object p0

    return-object p0

    :sswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyInitializer(Lmb/u2;)Lmb/u2;

    move-result-object p0

    return-object p0

    :sswitch_1
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyInitializer(Lmb/u2;)Lmb/u2;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public h0(Lmb/n0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAccessModifier(Lmb/n0;)Lmb/n0;

    move-result-object p0

    return-object p0
.end method

.method public i(Lmb/x1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyDoStatement(Lmb/x1;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lmb/t0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAnonymousClassDeclaration(Lmb/t0;)Lmb/t0;

    move-result-object p0

    return-object p0
.end method

.method public j(Lmb/k1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyCast(Lmb/k1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public j0(Lmb/f5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyStringLiteral(Lmb/f5;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public k(Lmb/n4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPackageMemberEnumDeclaration(Lmb/n4;)Lmb/v5;

    move-result-object p0

    return-object p0
.end method

.method public k0(Lmb/e4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNewArray(Lmb/e4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public l(Lmb/i4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNullLiteral(Lmb/i4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public l0(Lmb/b1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyAssignment(Lmb/b1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public m(Lmb/h5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySuperclassFieldAccessExpression(Lmb/h5;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public m0(Lmb/c5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySimpleType(Lmb/c5;)Lmb/s5;

    move-result-object p0

    return-object p0
.end method

.method public n(Lmb/r4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyParameterAccess(Lmb/r4;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lmb/u0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyArrayAccessExpression(Lmb/u0;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public o(Lmb/g0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySingleStaticImportDeclaration(Lmb/g0;)Lmb/f0;

    move-result-object p0

    return-object p0
.end method

.method public o0(Lmb/i0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyStaticImportOnDemandDeclaration(Lmb/i0;)Lmb/f0;

    move-result-object p0

    return-object p0
.end method

.method public p(Lmb/v4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyReferenceType(Lmb/v4;)Lmb/v4;

    move-result-object p0

    return-object p0
.end method

.method public p0(Lmb/g1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyBooleanLiteral(Lmb/g1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public q(Lmb/w3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyMethodReference(Lmb/w3;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lmb/s4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyParenthesizedExpression(Lmb/s4;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public r(Lmb/a3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLabeledStatement(Lmb/a3;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public r0(Lmb/o4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPackageMemberInterfaceDeclaration(Lmb/o4;)Lmb/v5;

    move-result-object p0

    return-object p0
.end method

.method public s(Lmb/o2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyForStatement(Lmb/o2;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public s0(Lmb/e2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyEnumConstant(Lmb/e2;)Lmb/e2;

    move-result-object p0

    return-object p0
.end method

.method public t(Lmb/b5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySimpleLiteral(Lmb/b5;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public t0(Lmb/j2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyFieldAccessExpression(Lmb/j2;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public u(Lmb/k5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copySwitchStatement(Lmb/k5;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public u0(Lmb/a2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyElementValueArrayInitializer(Lmb/a2;)Lmb/z1;

    move-result-object p0

    return-object p0
.end method

.method public v(Lmb/h2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyExpressionStatement(Lmb/h2;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public v0(Lmb/n5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyThrowStatement(Lmb/n5;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public visitConstructorInvocation(Lmb/t1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyConstructorInvocation(Lmb/t1;)Lmb/t1;

    move-result-object p0

    return-object p0
.end method

.method public visitPackage(Lmb/j4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyPackage(Lmb/j4;)Lmb/c1;

    move-result-object p0

    return-object p0
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyRvalue(Lmb/y4;)Lmb/y4;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitType(Lmb/s5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object p0

    return-object p0
.end method

.method public w(Lmb/o5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLocalVariableDeclaratorResource(Lmb/o5;)Lmb/p5;

    move-result-object p0

    return-object p0
.end method

.method public w0(Lmb/p1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyClassLiteral(Lmb/p1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public x(Lmb/o1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyClassInstanceCreationReference(Lmb/o1;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public x0(Lmb/h4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/u0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNormalAnnotation(Lmb/h4;)Lmb/r0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyNormalAnnotation(Lmb/h4;)Lmb/r0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public y(Lmb/m5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyThisReference(Lmb/m5;)Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public y0(Lmb/f3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLocalClassDeclarationStatement(Lmb/f3;)Lmb/f1;

    move-result-object p0

    return-object p0
.end method

.method public z(Lmb/h3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyLocalVariableAccess(Lmb/h3;)Lmb/n3;

    move-result-object p0

    return-object p0
.end method

.method public z0(Lmb/y3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyModularCompilationUnit(Lmb/y3;)Lmb/y3;

    move-result-object p0

    return-object p0
.end method
