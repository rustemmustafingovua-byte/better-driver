.class public abstract Lc8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Lc8/c;

.field public static final c:Lc8/c;

.field public static final d:Lc8/a;

.field public static final e:Lc8/a;

.field public static final f:Lc8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lc8/d;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Lc8/c;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v0, v3}, Lc8/c;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lc8/d;->b:Lc8/c;

    new-instance v0, Lc8/c;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, v2}, Lc8/c;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lc8/d;->c:Lc8/c;

    sget-object v0, Lc8/b;->c:Lc8/a;

    sput-object v0, Lc8/d;->d:Lc8/a;

    sget-object v0, Lc8/b;->d:Lc8/a;

    sput-object v0, Lc8/d;->e:Lc8/a;

    sget-object v0, Lc8/b;->e:Lc8/a;

    sput-object v0, Lc8/d;->f:Lc8/a;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/d;->b:Lc8/c;

    sput-object v0, Lc8/d;->c:Lc8/c;

    sput-object v0, Lc8/d;->d:Lc8/a;

    sput-object v0, Lc8/d;->e:Lc8/a;

    sput-object v0, Lc8/d;->f:Lc8/a;

    :goto_1
    return-void
.end method
