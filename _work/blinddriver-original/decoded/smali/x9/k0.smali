.class public final Lx9/k0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lx9/l0;

.field public m:Lx9/h;

.field public n:Lx9/m0;

.field public o:Lu9/v0;

.field public p:Ljava/lang/Object;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lx9/l0;

.field public s:I


# direct methods
.method public constructor <init>(Lx9/l0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lx9/k0;->r:Lx9/l0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/k0;->q:Ljava/lang/Object;

    iget p1, p0, Lx9/k0;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/k0;->s:I

    iget-object p1, p0, Lx9/k0;->r:Lx9/l0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method
