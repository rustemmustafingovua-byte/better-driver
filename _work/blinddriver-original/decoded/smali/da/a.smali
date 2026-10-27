.class public final Lda/a;
.super Lda/c;
.source "SourceFile"


# instance fields
.field public final l:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lda/a;)V
    .locals 1

    const-string v0, "missingFields"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lda/a;->l:Ljava/util/List;

    return-void
.end method
