.class abstract Lio/sentry/android/core/EmptySecureContentProvider;
.super Landroid/content/ContentProvider;
.source "EmptySecureContentProvider.java"


# instance fields
.field private final securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 21
    new-instance v0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 37
    iget-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    .line 54
    const/4 v0, 0x0

    return v0
.end method
