.class public final Ln/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/s1;


# instance fields
.field public final l:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln/x1;->l:I

    return-void
.end method


# virtual methods
.method public final i(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 4

    iget p0, p0, Ln/x1;->l:I

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    return-object p3

    :cond_0
    return-object p4
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Ln/x1;->l:I

    return p0
.end method

.method public final p(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 0

    return-object p5
.end method

.method public final r()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
