.class public abstract Lr0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/y0;

.field public static final b:Lr0/y0;

.field public static final c:Lr0/y0;

.field public static final d:Lr0/y0;

.field public static final e:Lr0/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/y0;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Lr0/y0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr0/s;->a:Lr0/y0;

    new-instance v0, Lr0/y0;

    invoke-direct {v0, v1}, Lr0/y0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr0/s;->b:Lr0/y0;

    new-instance v0, Lr0/y0;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Lr0/y0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr0/s;->c:Lr0/y0;

    new-instance v0, Lr0/y0;

    const-string v1, "providers"

    invoke-direct {v0, v1}, Lr0/y0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr0/s;->d:Lr0/y0;

    new-instance v0, Lr0/y0;

    const-string v1, "reference"

    invoke-direct {v0, v1}, Lr0/y0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr0/s;->e:Lr0/y0;

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lr0/l;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lr0/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Lr0/l;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lr0/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method
