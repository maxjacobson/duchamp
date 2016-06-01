class ReportRenderer
  def initialize(report)
    @report = report
  end

  def query_successful?
    query_result != false
  end

  def headers
    raise 'hell' unless query_successful?
    query_result.columns
  end

  def rows
    raise 'hell' unless query_successful?

    query_result.rows
  end

  def query_error
    raise 'hell' if query_successful?

    @query_error
  end

  private

  def query_result
    @query_result ||= begin
                        ActiveRecord::Base.connection.exec_query(report.query)
                      rescue ActiveRecord::ActiveRecordError => e
                        @query_error = e.message
                        false
                      end
  end

  attr_reader :report
end
