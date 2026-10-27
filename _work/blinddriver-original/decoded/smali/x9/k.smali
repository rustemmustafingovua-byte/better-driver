.class public final Lx9/k;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lx9/e;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lx9/e;

.field public o:I


# direct methods
.method public constructor <init>(Lx9/e;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lx9/k;->n:Lx9/e;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/k;->m:Ljava/lang/Object;

    iget p1, p0, Lx9/k;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/k;->o:I

    iget-object p1, p0, Lx9/k;->n:Lx9/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lx9/e;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
