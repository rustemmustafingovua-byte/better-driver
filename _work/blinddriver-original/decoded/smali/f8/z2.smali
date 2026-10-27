.class public final Lf8/z2;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:I

.field public final m:Lf8/p1;

.field public final n:Ljava/lang/String;

.field public final o:Lf8/w2;

.field public final p:Lf8/m2;

.field public q:I

.field public r:[Lf8/v2;


# direct methods
.method public constructor <init>(Lf8/p1;Lf8/w2;Lf8/m2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/z2;->m:Lf8/p1;

    invoke-virtual {p1}, Lf8/p1;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lf8/b3;->a(Lf8/w2;Lf8/m2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf8/z2;->n:Ljava/lang/String;

    iput-object p2, p0, Lf8/z2;->o:Lf8/w2;

    iput p4, p0, Lf8/z2;->l:I

    iput-object p3, p0, Lf8/z2;->p:Lf8/m2;

    const/4 p1, 0x0

    iput p1, p0, Lf8/z2;->q:I

    return-void
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/z2;->o:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/z2;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/z2;->m:Lf8/p1;

    invoke-virtual {p0}, Lf8/p1;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/z2;->m:Lf8/p1;

    return-object p0
.end method
