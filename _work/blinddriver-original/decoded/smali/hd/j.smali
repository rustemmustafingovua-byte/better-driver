.class public final Lhd/j;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:Lhd/k;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lhd/k;

.field public p:I


# direct methods
.method public constructor <init>(Lhd/k;La9/c;)V
    .locals 0

    iput-object p1, p0, Lhd/j;->o:Lhd/k;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lhd/j;->n:Ljava/lang/Object;

    iget p1, p0, Lhd/j;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lhd/j;->p:I

    iget-object p1, p0, Lhd/j;->o:Lhd/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lhd/k;->d(ILa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
