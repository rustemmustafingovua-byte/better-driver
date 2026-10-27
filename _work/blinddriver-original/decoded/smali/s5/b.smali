.class public abstract Ls5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls5/a;

.field public static final b:Ls5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ls5/a;

    const/16 v4, 0x3d

    const/16 v5, 0x4c

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Ls5/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    new-instance v1, Ls5/a;

    const-string v2, "MIME-NO-LINEFEEDS"

    const v3, 0x7fffffff

    invoke-direct {v1, v0, v2, v3}, Ls5/a;-><init>(Ls5/a;Ljava/lang/String;I)V

    sput-object v1, Ls5/b;->a:Ls5/a;

    new-instance v1, Ls5/a;

    const-string v2, "PEM"

    const/16 v3, 0x40

    invoke-direct {v1, v0, v2, v3}, Ls5/a;-><init>(Ls5/a;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    new-instance v3, Ls5/a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const-string v4, "MODIFIED-FOR-URL"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ls5/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v3, Ls5/b;->b:Ls5/a;

    return-void
.end method
