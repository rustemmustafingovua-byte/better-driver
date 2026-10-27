.class public final Lhd/i;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:I

.field public p:I

.field public q:J

.field public r:J

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lhd/k;

.field public u:I


# direct methods
.method public constructor <init>(Lhd/k;La9/c;)V
    .locals 0

    iput-object p1, p0, Lhd/i;->t:Lhd/k;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lhd/i;->s:Ljava/lang/Object;

    iget p1, p0, Lhd/i;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lhd/i;->u:I

    iget-object p1, p0, Lhd/i;->t:Lhd/k;

    invoke-virtual {p1, p0}, Lhd/k;->c(La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
