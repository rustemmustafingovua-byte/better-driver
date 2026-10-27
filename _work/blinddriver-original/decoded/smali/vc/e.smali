.class public final Lvc/e;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lj9/y;

.field public m:Ldadb/Dadb;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lvc/f;

.field public p:I


# direct methods
.method public constructor <init>(Lvc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lvc/e;->o:Lvc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lvc/e;->n:Ljava/lang/Object;

    iget p1, p0, Lvc/e;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lvc/e;->p:I

    iget-object p1, p0, Lvc/e;->o:Lvc/f;

    invoke-virtual {p1, p0}, Lvc/f;->e(La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
