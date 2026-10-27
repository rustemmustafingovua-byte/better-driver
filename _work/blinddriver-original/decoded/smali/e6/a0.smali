.class public final Le6/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ls5/h;

.field public final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ls5/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/a0;->a:Ljava/lang/Object;

    iput-object p2, p0, Le6/a0;->c:Ljava/lang/Class;

    iput-object p3, p0, Le6/a0;->b:Ls5/h;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Le6/a0;->c:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le6/a0;->b:Ls5/h;

    iget-object p0, p0, Le6/a0;->a:Ljava/lang/Object;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Object id [%s] (for %s) at %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
