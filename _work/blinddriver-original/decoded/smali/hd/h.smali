.class public final Lhd/h;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lhd/k;

.field public r:I


# direct methods
.method public constructor <init>(Lhd/k;La9/c;)V
    .locals 0

    iput-object p1, p0, Lhd/h;->q:Lhd/k;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lhd/h;->p:Ljava/lang/Object;

    iget p1, p0, Lhd/h;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lhd/h;->r:I

    iget-object p1, p0, Lhd/h;->q:Lhd/k;

    invoke-virtual {p1, p0}, Lhd/k;->b(La9/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method
