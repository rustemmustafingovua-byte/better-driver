.class public final Lf6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le6/y;

.field public final b:Ln6/d;

.field public final c:Ljava/lang/String;

.field public d:Le6/y;


# direct methods
.method public constructor <init>(Le6/y;Ln6/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6/f;->a:Le6/y;

    iput-object p2, p0, Lf6/f;->b:Ln6/d;

    check-cast p2, Lo6/a;

    iget-object p1, p2, Lo6/a;->p:Ljava/lang/String;

    iput-object p1, p0, Lf6/f;->c:Ljava/lang/String;

    return-void
.end method
