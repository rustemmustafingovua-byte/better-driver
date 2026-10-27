.class public final Lid/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:D

.field public final e:D

.field public final f:Ljava/lang/String;

.field public g:D

.field public h:J

.field public final i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;DDLjava/lang/String;DJI)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lid/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lid/h;->c:Ljava/lang/Integer;

    iput-wide p4, p0, Lid/h;->d:D

    iput-wide p6, p0, Lid/h;->e:D

    iput-object p8, p0, Lid/h;->f:Ljava/lang/String;

    iput-wide p9, p0, Lid/h;->g:D

    iput-wide p11, p0, Lid/h;->h:J

    iput p13, p0, Lid/h;->i:I

    return-void
.end method
