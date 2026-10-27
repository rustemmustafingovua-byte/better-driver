.class public final Lr/l0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lr/u;

.field public m:Ls/b;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lr/o0;

.field public p:I


# direct methods
.method public constructor <init>(Lr/o0;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/l0;->o:Lr/o0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/l0;->n:Ljava/lang/Object;

    iget p1, p0, Lr/l0;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/l0;->p:I

    iget-object p1, p0, Lr/l0;->o:Lr/o0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lr/o0;->Q0(Lr/o0;Lr/u;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
