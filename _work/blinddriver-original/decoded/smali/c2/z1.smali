.class public final Lc2/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/y1;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lc2/n;

.field public final d:Lc2/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/z1;->b:Ljava/lang/String;

    new-instance v0, Lc2/n;

    invoke-direct {v0, p1}, Lc2/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc2/z1;->c:Lc2/n;

    const-string v0, " maximum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lc2/n;

    invoke-direct {v0, p1}, Lc2/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc2/z1;->d:Lc2/n;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc2/z1;->b:Ljava/lang/String;

    return-object p0
.end method
