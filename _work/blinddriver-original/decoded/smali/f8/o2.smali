.class public final Lf8/o2;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lf8/w2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lf8/w2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lf8/o2;->n:Lf8/w2;

    iput-object p2, p0, Lf8/o2;->m:Ljava/lang/String;

    iput-object p1, p0, Lf8/o2;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/o2;->n:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/o2;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/o2;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/o2;->n:Lf8/w2;

    iget-object p0, p0, Lf8/w2;->l:Lf8/y0;

    return-object p0
.end method
