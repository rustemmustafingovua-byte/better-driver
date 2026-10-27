.class public final Lx9/a0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lx9/b0;

.field public m:Lx9/h;

.field public n:Lx9/d0;

.field public o:Lu9/v0;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lx9/b0;

.field public r:I


# direct methods
.method public constructor <init>(Lx9/b0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lx9/a0;->q:Lx9/b0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/a0;->p:Ljava/lang/Object;

    iget p1, p0, Lx9/a0;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/a0;->r:I

    iget-object p1, p0, Lx9/a0;->q:Lx9/b0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method
